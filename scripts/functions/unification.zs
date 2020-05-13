#priority 1001

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;


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
    var preferredItem = getPreferredItemInTag(tag, modPriorities);
	for item in tag.items {
		if (!item.matches(preferredItem)) {
			tag.removeItems(item);
			disableItem(item);

			// Fallback recipe
			craftingTable.addShapeless(formatRecipeName(item) + "_conversion_recipe", tag.first(), [item]);
		}
	}
}
public function minecraft_smeltingAndBlasting_ingot_from_ore(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var ore = oreItemTag.first();
    var ingot = ingotItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

	if (ingot.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    var xp = 1.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, ore);
    furnace.removeRecipe(ingot, ore);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime / 2);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
}
public function minecraft_smeltingAndBlasting_ingot_from_dust(material as string) as void {
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dust = dustItemTag.first();
    var ingot = ingotItemTag.first();

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    if (ingot.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    var xp = 0.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, dust);
    furnace.removeRecipe(ingot, dust);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime / 2);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
}
public function mekanism_enriching_dust_from_ore(material as string) as void {
	switch (material) {
		case "redstone":
		case "lapis":
		case "diamond":
		case "coal":
		case "emerald":
		case "quartz":
		case "glowstone":
			logger.info("mekanism_enriching_dust_from_ore: Skipping material " + material);
			return;
	}
    
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ore = oreItemTag.first();
    var dust = dustItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_dust_from_ore: No items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_dust_from_ore: No items exist in the ItemTag " + dustItemTag.commandString);
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

    logger.info("mekanism_enriching_dust_from_ore with " + material + " succesfully ran!");
}
public function mekanism_crushing_dust_from_ingot(material as string) as void {
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingot = ingotItemTag.first();
    var dust = dustItemTag.first();

    if (ingot.matches(<item:minecraft:air>)) {
        logger.info("mekanism_crushing_dust_from_ingot: No items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_crushing_dust_from_ingot: No items exist in the ItemTag " + dustItemTag.commandString);
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

    logger.info("mekanism_crushing_dust_from_ingot with " + material + " succesfully ran!");
}
public function mekanism_injecting_shard_from_ore(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var shardItemTag = BracketHandlers.getTag("forge:shards/" + material);
    var ore = oreItemTag.first();
    var shard = shardItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("mekanism_injecting_shard_from_ore: No items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    if (shard.matches(<item:minecraft:air>)) {
        logger.info("mekanism_injecting_shard_from_ore: No items exist in the ItemTag " + shardItemTag.commandString);
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

    logger.info("mekanism_injecting_shard_from_ore with " + material + " succesfully ran!");
}
public function mekanism_enriching_dust_from_dirty_dust(material as string) as void {
	var dirty_dustItemTag = BracketHandlers.getTag("forge:dirty_dusts/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var dirty_dust = dirty_dustItemTag.first();
    var dust = dustItemTag.first();

    if (dirty_dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_dust_from_dirty_dust: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_enriching_dust_from_dirty_dust: No items exist in the ItemTag " + dustItemTag.commandString);
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

    logger.info("mekanism_enriching_dust_from_dirty_dust with " + material + " succesfully ran!");
}
public function mekanism_crushing_dirty_dust_from_clump(material as string) as void {
	var dirty_dustItemTag = BracketHandlers.getTag("forge:dirty_dusts/" + material);
    var clumpItemTag = BracketHandlers.getTag("forge:clumps/" + material);
    var dirty_dust = dirty_dustItemTag.first();
    var clump = clumpItemTag.first();

    if (dirty_dust.matches(<item:minecraft:air>)) {
        logger.info("mekanism_crushing_dirty_dust_from_clump: No items exist in the ItemTag " + dirty_dustItemTag.commandString);
        return;
    }

    if (clump.matches(<item:minecraft:air>)) {
        logger.info("mekanism_crushing_dirty_dust_from_clump: No items exist in the ItemTag " + clumpItemTag.commandString);
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

    logger.info("mekanism_crushing_dirty_dust_from_clump with " + material + " succesfully ran!");
}
public function mekanism_injecting_clump_from_shard(material as string) as void {
	var shardItemTag = BracketHandlers.getTag("forge:shards/" + material);
    var clumpItemTag = BracketHandlers.getTag("forge:clumps/" + material);
    var shard = shardItemTag.first();
    var clump = clumpItemTag.first();

    if (shard.matches(<item:minecraft:air>)) {
        logger.info("mekanism_injecting_clump_from_shard: No items exist in the ItemTag " + shardItemTag.commandString);
        return;
    }

    if (clump.matches(<item:minecraft:air>)) {
        logger.info("mekanism_injecting_clump_from_shard: No items exist in the ItemTag " + clumpItemTag.commandString);
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

    logger.info("mekanism_injecting_clump_from_shard with " + material + " succesfully ran!");
}
public function mekanism_injecting_shard_from_crystal(material as string) as void {
	var crystalItemTag = BracketHandlers.getTag("forge:crystals/" + material);
    var shardItemTag = BracketHandlers.getTag("forge:shards/" + material);
    var crystal = crystalItemTag.first();
    var shard = shardItemTag.first();

    if (crystal.matches(<item:minecraft:air>)) {
        logger.info("mekanism_injecting_shard_from_crystal: No items exist in the ItemTag " + crystalItemTag.commandString);
        return;
    }

    if (shard.matches(<item:minecraft:air>)) {
        logger.info("mekanism_injecting_shard_from_crystal: No items exist in the ItemTag " + shardItemTag.commandString);
        return;
    } 

    <recipetype:crafting>.removeByName("mekanism:processing/" + material + "/shard/from_crystal");
    <recipetype:mekanism:injecting>.addJSONRecipe("processing/" + material + "/shard/from_crystal",
    {
        itemInput: {
            ingredient: {
                item: crystal.registryName
            }
        },
		gasInput: {
            amount: 1,
			gas: "mekanism:hydrogen_chloride"
        },
        output: {
            item: shard.registryName
        }
    });

    logger.info("mekanism_injecting_shard_from_crystal with " + material + " succesfully ran!");
}

public function enigmatica_ore_deposit_processing(material as string) as void {
    var ore_deposit_tag = BracketHandlers.getTag("forge:ore_deposits/" + material);
    var nugget_tag = BracketHandlers.getTag("forge:nuggets/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    var gem_tag = BracketHandlers.getTag("forge:gems/" + material);

    var ore_deposit = ore_deposit_tag.first(); 
    var nugget = nugget_tag.first();
    var dust = dust_tag.first();
    var gem = gem_tag.first();

    if (ore_deposit.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add crushing recipe, but no items exist in the ItemTag " + ore_deposit_tag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add crushing recipe, but no items exist in the ItemTag " + dust_tag.commandString);
        return;
    }

    if (nugget.matches(<item:minecraft:air>)) {
        var xp = 1.0;
        var processingTime = 100;
        blastFurnace.addRecipe("blasting_" + formatRecipeName(nugget) + "_from_ore_deposit", dust, ore_deposit, xp, processingTime / 2);
        furnace.addRecipe("smelting_" + formatRecipeName(nugget) + "_from_ore_deposit", dust, ore_deposit, xp, processingTime);
    } else {
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

public function occultism_ore_inot_crushing(material as string) as void {
    var ore_tag = BracketHandlers.getTag("forge:ores/" + material);
    var dust_tag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingot_tag = BracketHandlers.getTag("forge:ingots/" + material);

    var ore = ore_tag.first();
    var dust = dust_tag.first();
    var ingot = ingot_tag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add crushing recipe, but no items exist in the ItemTag " + ore_tag.commandString);
        return;
    }

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add crushing recipe, but no items exist in the ItemTag " + dust_tag.commandString);
        return;
    }

    if (ingot.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add crushing recipe, but no items exist in the ItemTag " + ingot_tag.commandString);
        return;
    }
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

