#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var materials as string[] = [
    "coal",
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
    mekanism_ore_enriching(material);
    mekanism_dirty_dust_enriching(material);
    mekanism_ingot_crushing(material);
}

function enigmatica_ore_deposit_processing(material as string) as void {
    var ore_deposit_tag = BracketHandlers.getTag("forge:ore_deposits/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    var nugget_tag = BracketHandlers.getTag("forge:nuggets/" + material);

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

    <recipetype:create:crushing>.addJSONRecipe("processing/" + material + "/dust/from_ore_deposit",
    {
    ingredients: [
        {
            item: ore_deposit.registryName,
            count: 1
        }
    ], 
    results: [
        {
            item: dust.registryName,
            count: 1
        },
        {
            item: dust.registryName,
            chance: 0.25 as float,
            count: 1
        },
        {
            item: "minecraft:dirt",
            chance: 0.5 as float,
            count: 1
        }
    ],
    processingTime: 500
    });

    <recipetype:immersiveengineering:crusher>.addJSONRecipe("processing/" + material + "/dust/from_ore_deposit",
    {
    secondaries: [],
    result: {
        tag: "forge:dusts/" + material
    },
    input: {
        item: ore_deposit.registryName
    },
    energy: 2000 as int
    });

    logger.info("enigmatica_ore_deposit_processing with " + material + " succesfully ran!");
}

function occultism_ore_ingot_crushing(material as string) as void {
    var blacklistedMaterials as string[] = [
        "redstone",
        "lapis", 
        "emerald",
        "diamond", 
        "quartz",
        "coal"
    ];

    for blacklistedMaterial in blacklistedMaterials {
        if (blacklistedMaterial == material) {
            return;
        }
    }
    
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

    logger.info("occultism_ore_ingot_crushing with " + material + " succesfully ran!");
}

function mekanism_ore_enriching(material as string) as void {
    var blacklistedMaterials as string[] = [
        "redstone",
        "lapis", 
        "emerald",
        "diamond", 
        "quartz",
        "coal"
    ];

    for blacklistedMaterial in blacklistedMaterials {
        if (blacklistedMaterial == material) {
            return;
        }
    }

    var ore_tag = BracketHandlers.getTag("forge:ores/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    
    if (!ore_tag.isItemTag) {
        return;
    }

    if (!dust_tag.isItemTag) {
        return;
    }

    var ore = ore_tag.firstItem;
    var dust = dust_tag.firstItem;

    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/" + material + "/dust/from_ore");
    <recipetype:mekanism:enriching>.addJSONRecipe("processing/" + material + "/dust/from_ore",
    {
        input: {
            ingredient: {
                item: ore.registryName
            }
            
        },
        output: {
            item: dust.registryName,
            count: 2
        }
    });
}

function mekanism_dirty_dust_enriching(material as string) as void {
    var dirty_dust_tag = BracketHandlers.getTag("mekanism:dirty_dusts/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    
    if (!dirty_dust_tag.isItemTag) {
        return;
    }

    if (!dust_tag.isItemTag) {
        return;
    }

    var dirty_dust = dirty_dust_tag.firstItem;
    var dust = dust_tag.firstItem;
    <recipetype:mekanism:enriching>.removeByName("mekanism:processing/" + material + "/dust/from_dirty_dust");
    <recipetype:mekanism:enriching>.addJSONRecipe("processing/" + material + "/dust/from_dirty_dust",
    {
        input: {
            ingredient: {
                item: dirty_dust.registryName
            }
            
        },
        output: {
            item: dust.registryName
        }
    });
}

function mekanism_ingot_crushing(material as string) as void {
    var ingot_tag = BracketHandlers.getTag("forge:ingots/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    
    if (!ingot_tag.isItemTag) {
        return;
    }

    if (!dust_tag.isItemTag) {
        return;
    }

    var ingot = ingot_tag.firstItem;
    var dust = dust_tag.firstItem;

    <recipetype:mekanism:crushing>.removeByName("mekanism:processing/" + material + "/dust/from_ingot");
    <recipetype:mekanism:crushing>.addJSONRecipe("processing/" + material + "/dust/from_ingot",
    {
        input: {
            ingredient: {
                item: ingot.registryName
            }
            
        },
        output: {
            item: dust.registryName,
        }
    });
}