#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var materials as string[] = [
    "iron",
    "gold",
    "neptunium",
    "copper",
    "silver",
    "zinc",
    "brass",
    "tungsten",
    "lead",
    "quicksilver",
    "tin",
    "redstone_alloy",
    "refined_iron",
    "compressed_iron",
    "nickel",
    "platinum",
    "bismuth",
    "aluminum",
    "uranium",
    "bronze",
    "invar",
    "electrum",
    "bismuth_brass",
    "aluminum_steel",
    "bismuth_steel",
    "signalum",
    "lumium",
    "enderium",
    "steel",

    "diamond",
    "lapis",
    "emerald",
    "quartz",

    "redstone",
    "glowstone",

    "obsidian"
];

for material in materials {
    enigmatica_ore_deposit_processing(material);
    occultism_ore_ingot_crushing(material);
}

function enigmatica_ore_deposit_processing(material as string) as void {
    var ore_deposit_tag = BracketHandlers.getTag("forge:ore_deposits/" + material);
    var nugget_tag = BracketHandlers.getTag("forge:nuggets/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);

    if (!ore_deposit_tag.isItemTag) {
        return;
    }

    if (!dust_tag.isItemTag) {
        return;
    }

    var ore_deposit = ore_deposit_tag.firstItem; 
    var dust = dust_tag.firstItem;

    if (!nugget_tag.isItemTag) {
        var xp = 1.0;
        var processingTime = 100;
        blastFurnace.addRecipe("blasting_" + formatRecipeName(dust) + "_from_ore_deposit", dust, ore_deposit, xp, processingTime / 2);
        furnace.addRecipe("smelting_" + formatRecipeName(dust) + "_from_ore_deposit", dust, ore_deposit, xp, processingTime);
    } else {
        var nugget = nugget_tag.firstItem;
        var xp = 1.0;
        var processingTime = 100;
        blastFurnace.addRecipe("blasting_" + formatRecipeName(nugget) + "_from_ore_deposit", nugget, ore_deposit, xp, processingTime / 2);
        furnace.addRecipe("smelting_" + formatRecipeName(nugget) + "_from_ore_deposit", nugget, ore_deposit, xp, processingTime);
    }

    <recipetype:mekanism:enriching>.addJSONRecipe("processing/" + material + "/dust/from_ore_deposit",
    {
        input: {
            ingredient: {
                item: ore_deposit.registryName
            }
            
        },
        output: {
            item: dust.registryName
        }
    });

    <recipetype:silents_mechanisms:crushing>.addJSONRecipe("processing/" + material + "/chunk/from_ore_deposit",
    {
        process_time: 200,
        ingredient: {
        item: ore_deposit.registryName
        },
    results: [
        {
            item: dust.registryName,
        },
        {
            item: <item:minecraft:dirt>.registryName,
            chance: 0.5 as float
        }
    ]
    });

    logger.info("enigmatica_ore_deposit_processing with " + material + " succesfully ran!");
}

function occultism_ore_ingot_crushing(material as string) as void {
    var ore_tag = BracketHandlers.getTag("forge:ores/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingot_tag = BracketHandlers.getTag("forge:ingots/" + material);
    
    if (!ore_tag.isItemTag) {
        return;
    }

    if (!dust_tag.isItemTag) {
        return;
    }

    var ore = ore_tag.firstItem;
    var dust = dust_tag.firstItem;

    <recipetype:occultism:crushing>.addJSONRecipe("processing/" + material + "/dust/from_ore",
    {
        ingredient: {
            item: ore.registryName
        },
        
        result: {
            item: dust.registryName,
            count: 2
        },
        crushing_time: 200
    });

    if (!ingot_tag.isItemTag) {
        return;
    }
    var ingot = ingot_tag.firstItem;

    <recipetype:occultism:crushing>.addJSONRecipe("processing/" + material + "/dust/from_ingot",
    {
        ingredient: {
            item: ingot.registryName
        },
        
        result: {
            item: dust.registryName,
            count: 1
        },
        crushing_time: 200
    });

    logger.info("occultism_ore_inot_crushing with " + material + " succesfully ran!");
}