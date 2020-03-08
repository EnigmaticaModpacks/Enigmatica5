#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function formatRecipeName(item as IItemStack) as string {
	return item.translationKey + "_" + item.amount;
}

public function addShaped(output as IItemStack, input as IIngredient[][], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShaped(recipeName, output, input, null);
}

public function addShapedMirrored(output as IItemStack, input as IIngredient[][], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapedMirrored(recipeName, output, input);
}

public function addShapeless(output as IItemStack, input as IIngredient[], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapeless(recipeName, output, input);
}

public function removeRecipe(output as IItemStack) as void {
	craftingTable.removeRecipe(output);
}

public function getPreferredItemInTag(tag as MCTag, modPriorities as string[]) as IItemStack {
	for mod in modPriorities {
		for item in tag.items {
            var itemOwner = item.registryName.split(":")[0];
            if (itemOwner == mod) {
                return item;
            }
        }
    }
	logger.warning("Unable to find acceptable item in MCTag " + tag.commandString + ". It contained:");
	for item in tag.items {
		logger.info(item.registryName);
	}
    return <item:minecraft:air>;
}

public function purgeItemTag(tag as MCTag, modPriorities as string[]) as void {
	for item in tag.items {
		if (!item.matches(getPreferredItemInTag(tag, modPriorities))) {
			tag.removeItems(item);
			removeProcessingFor(item);
			
			// Fallback recipe
			craftingTable.addShapeless(formatRecipeName(item) + "_conversion_recipe", tag.first(), [item]);
		}
	}
}


public function minecraft_smeltingAndBlasting_oreToIngot(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var ore = oreItemTag.first();
    var ingot = ingotItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    var xp = 1.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, ore);
    furnace.removeRecipe(ingot, ore);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
}
public function minecraft_smeltingAndBlasting_dustToIngot(material as string) as void {
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dust = dustItemTag.first();
    var ingot = ingotItemTag.first();

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    var xp = 0.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, dust);
    furnace.removeRecipe(ingot, dust);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
}
public function mekanism_enriching_oreToDust(material as string) as void {
	switch (material) {
		case "redstone":
		case "lapis":
		case "diamond":
		case "coal":
		case "emerald":
		case "quartz":
		case "glowstone":
			logger.info("mekanism_enriching_oreToDust: Skipping material " + material);
			return;
	}
    
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ore = oreItemTag.first();
    var dust = dustItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_oreToDust: No items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_oreToDust: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    var outputCount = 2;
    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_ore");
    <recipetype:mekanism:enriching>.addJSONRecipe("processing/" + material + "/dust/from_ore",
    {
        input: {
            ingredient: {
                item: ore.registryName
            }
            
        },
        output: {
            item: dust.registryName,
            count: outputCount
        }
    });

    logger.info("mekanism_enriching_oreToDust with " + material + " succesfully ran!");
}

public function mekanism_crusher_ingotToDust(material as string) as void {
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingot = ingotItemTag.first();
    var dust = dustItemTag.first();

    if (ingot.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_oreToDust: No items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_oreToDust: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    var outputCount = 2;
    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_ingot");
    <recipetype:mekanism:crushing>.addJSONRecipe("processing/" + material + "/dust/from_ingot",
    {
        input: {
            ingredient: {
                item: ingot.registryName
            }
            
        },
        output: {
            item: dust.registryName
        }
    });

    logger.info("mekanism_crusher_ingotToDust with " + material + " succesfully ran!");
}

public function mekanism_chemicalInjectionChamber_oreToShard(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var shardItemTag = BracketHandlers.getTag("forge:shards/" + material);
    var ore = oreItemTag.first();
    var shard = shardItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("mekanism_chemicalInjectionChamber_oreToShard: No items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    if (shard.matches(<item:minecraft:air>)) {
        logger.info("mekanism_chemicalInjectionChamber_oreToShard: No items exist in the ItemTag " + shardItemTag.commandString);
        return;
    } 

    var outputCount = 4;
    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/shard/from_ore");
    <recipetype:mekanism:injecting>.addJSONRecipe("processing/" + material + "/shard/from_ore",
    {
        itemInput: {
            ingredient: {
                item: ore.registryName
            }
        },
        gasInput: {
            amount: 1,
            gas: "mekanism:hydrogen_chloride"
        },
        output: {
            item: shard.registryName,
			count: outputCount
        }
    });

    logger.info("mekanism_chemicalInjectionChamber_oreToShard with " + material + " succesfully ran!");
}

public function mekanism_enrichmentChamer_dirtyDustToDust(material as string) as void {
	var dirty_dustItemTag = BracketHandlers.getTag("forge:dirty_dusts/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var dirty_dust = dirty_dustItemTag.first();
    var dust = dustItemTag.first();

    if (dirty_dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enrichmentChamer_dirtyDustToDust: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enrichmentChamer_dirtyDustToDust: No items exist in the ItemTag " + dustItemTag.commandString);
        return;
    } 

    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dust/from_dirty_dust");
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

    logger.info("mekanism_enrichmentChamer_dirtyDustToDust with " + material + " succesfully ran!");
}

public function mekanism_crusher_clumpToDirtyDust(material as string) as void {
	var dirty_dustItemTag = BracketHandlers.getTag("forge:dirty_dusts/" + material);
    var clumpItemTag = BracketHandlers.getTag("forge:clumps/" + material);
    var dirty_dust = dirty_dustItemTag.first();
    var clump = clumpItemTag.first();

    if (dirty_dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_crusher_clumpToDirtyDust: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    if (clump.matches(<item:minecraft:air>)) {
        logger.info("mekanism_crusher_clumpToDirtyDust: No items exist in the ItemTag " + clumpItemTag.commandString);
        return;
    } 

    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/dirty_dust/from_clump");
    <recipetype:mekanism:crushing>.addJSONRecipe("processing/" + material + "/dirty_dust/from_clump",
    {
        input: {
            ingredient: {
                item: clump.registryName
            }
            
        },
        output: {
            item: dirty_dust.registryName
        }
    });

    logger.info("mekanism_crusher_clumpToDirtyDust with " + material + " succesfully ran!");
}
public function mekanism_chemicalInjectionChamber_shardToClump(material as string) as void {
	var shardItemTag = BracketHandlers.getTag("forge:shards/" + material);
    var clumpItemTag = BracketHandlers.getTag("forge:clumps/" + material);
    var shard = shardItemTag.first();
    var clump = clumpItemTag.first();

    if (shard.matches(<item:minecraft:air>)) {
        logger.info("mekanism_chemicalInjectionChamber_shardToClump: No items exist in the ItemTag " + shardItemTag.commandString);
        return;
    }

    if (clump.matches(<item:minecraft:air>)) {
        logger.info("mekanism_chemicalInjectionChamber_shardToClump: No items exist in the ItemTag " + clumpItemTag.commandString);
        return;
    } 

    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/clump/from_shard");
    <recipetype:mekanism:purifying>.addJSONRecipe("processing/" + material + "/clump/from_shard",
    {
        itemInput: {
            ingredient: {
                item: shard.registryName
            }
        },
		gasInput: {
            amount: 1,
			gas: "mekanism:oxygen"
        },
        output: {
            item: clump.registryName
        }
    });

    logger.info("mekanism_chemicalInjectionChamber_shardToClump with " + material + " succesfully ran!");
}
public function mekanism_chemicalInjectionChamber_crystalToShard(material as string) as void {}
public function mekanism_chemicalCrystallizer_cleanSlurryToCrystal(material as string) as void {}
public function mekanism_chemicalWasher_slurryToCleanSlurry(material as string) as void {}
public function mekanism_chemicalDissolutionChamber_oreToSlurry(material as string) as void {}




/* public function minecraft_addEquipmentToNuggetSmelting(material as string) as void {
    var nuggetTag = BracketHandlers.getTag("forge:nuggets/" + material);
    var nugget = nuggetTag.first();
    var equipmentTag = BracketHandlers.getTag("mysticalworld:" + material + "_items");
    var xp = 1.0;
    var cookingTime = 200;

    if (equipmentTag.first().matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + equipmentTag.commandString);
    }
    else if (nugget.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + nuggetTag.commandString);
    } 
    else {
        for item in equipmentTag.items {
            blastFurnace.removeRecipe(nuggetTag.first(), item);
            furnace.removeRecipe(nuggetTag.first(), item);
            blastFurnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);
            furnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);    
        }  
    } 
} */