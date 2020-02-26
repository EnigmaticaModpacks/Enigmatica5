#priority 899

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var materials as MCTag[string][string] = {
    "iron": {
        "nugget": <tag:forge:nuggets/iron>,
        "ingot": <tag:forge:ingots/iron>,
        "gem": <tag:forge:gems/iron>,
        "storage_block": <tag:forge:storage_blocks/iron>,
        "ore": <tag:forge:ores/iron>,
        "ore_deposit": <tag:forge:ore_deposit/iron>,
        "dust": <tag:forge:dusts/iron>,
        "gear": <tag:forge:gears/iron>,
        "plate": <tag:forge:plates/iron>,
        "rod": <tag:forge:rods/iron>
    },

    "gold": {
        "nugget": <tag:forge:nuggets/gold>,
        "ingot": <tag:forge:ingots/gold>,
        "gem": <tag:forge:gems/gold>,
        "storage_block": <tag:forge:storage_blocks/gold>,
        "ore": <tag:forge:ores/gold>,
        "ore_deposit": <tag:forge:ore_deposit/gold>,
        "dust": <tag:forge:dusts/gold>,
        "gear": <tag:forge:gears/gold>,
        "plate": <tag:forge:plates/gold>,
        "rod": <tag:forge:rods/gold>
    },

    "neptunium": {
        "nugget": <tag:forge:nuggets/neptunium>,
        "ingot": <tag:forge:ingots/neptunium>,
        "gem": <tag:forge:gems/neptunium>,
        "storage_block": <tag:forge:storage_blocks/neptunium>,
        "ore": <tag:forge:ores/neptunium>,
        "ore_deposit": <tag:forge:ore_deposit/neptunium>,
        "dust": <tag:forge:dusts/neptunium>,
        "gear": <tag:forge:gears/neptunium>,
        "plate": <tag:forge:plates/neptunium>,
        "rod": <tag:forge:rods/neptunium>
    },

    "copper": {
        "nugget": <tag:forge:nuggets/copper>,
        "ingot": <tag:forge:ingots/copper>,
        "gem": <tag:forge:gems/copper>,
        "storage_block": <tag:forge:storage_blocks/copper>,
        "ore": <tag:forge:ores/copper>,
        "ore_deposit": <tag:forge:ore_deposit/copper>,
        "dust": <tag:forge:dusts/copper>,
        "gear": <tag:forge:gears/copper>,
        "plate": <tag:forge:plates/copper>,
        "rod": <tag:forge:rods/copper>
    },

    "silver": {
        "nugget": <tag:forge:nuggets/silver>,
        "ingot": <tag:forge:ingots/silver>,
        "gem": <tag:forge:gems/silver>,
        "storage_block": <tag:forge:storage_blocks/silver>,
        "ore": <tag:forge:ores/silver>,
        "ore_deposit": <tag:forge:ore_deposit/silver>,
        "dust": <tag:forge:dusts/silver>,
        "gear": <tag:forge:gears/silver>,
        "plate": <tag:forge:plates/silver>,
        "rod": <tag:forge:rods/silver>
    },

    "zinc": {
        "nugget": <tag:forge:nuggets/zinc>,
        "ingot": <tag:forge:ingots/zinc>,
        "gem": <tag:forge:gems/zinc>,
        "storage_block": <tag:forge:storage_blocks/zinc>,
        "ore": <tag:forge:ores/zinc>,
        "ore_deposit": <tag:forge:ore_deposit/zinc>,
        "dust": <tag:forge:dusts/zinc>,
        "gear": <tag:forge:gears/zinc>,
        "plate": <tag:forge:plates/zinc>,
        "rod": <tag:forge:rods/zinc>
    },

    "brass": {
        "nugget": <tag:forge:nuggets/brass>,
        "ingot": <tag:forge:ingots/brass>,
        "gem": <tag:forge:gems/brass>,
        "storage_block": <tag:forge:storage_blocks/brass>,
        "ore": <tag:forge:ores/brass>,
        "ore_deposit": <tag:forge:ore_deposit/brass>,
        "dust": <tag:forge:dusts/brass>,
        "gear": <tag:forge:gears/brass>,
        "plate": <tag:forge:plates/brass>,
        "rod": <tag:forge:rods/brass>
    },

    "tungsten": {
        "nugget": <tag:forge:nuggets/tungsten>,
        "ingot": <tag:forge:ingots/tungsten>,
        "gem": <tag:forge:gems/tungsten>,
        "storage_block": <tag:forge:storage_blocks/tungsten>,
        "ore": <tag:forge:ores/tungsten>,
        "ore_deposit": <tag:forge:ore_deposit/tungsten>,
        "dust": <tag:forge:dusts/tungsten>,
        "gear": <tag:forge:gears/tungsten>,
        "plate": <tag:forge:plates/tungsten>,
        "rod": <tag:forge:rods/tungsten>
    },

    "lead": {
        "nugget": <tag:forge:nuggets/lead>,
        "ingot": <tag:forge:ingots/lead>,
        "gem": <tag:forge:gems/lead>,
        "storage_block": <tag:forge:storage_blocks/lead>,
        "ore": <tag:forge:ores/lead>,
        "ore_deposit": <tag:forge:ore_deposit/lead>,
        "dust": <tag:forge:dusts/lead>,
        "gear": <tag:forge:gears/lead>,
        "plate": <tag:forge:plates/lead>,
        "rod": <tag:forge:rods/lead>
    },

    "quicksilver": {
        "nugget": <tag:forge:nuggets/quicksilver>,
        "ingot": <tag:forge:ingots/quicksilver>,
        "gem": <tag:forge:gems/quicksilver>,
        "storage_block": <tag:forge:storage_blocks/quicksilver>,
        "ore": <tag:forge:ores/quicksilver>,
        "ore_deposit": <tag:forge:ore_deposit/quicksilver>,
        "dust": <tag:forge:dusts/quicksilver>,
        "gear": <tag:forge:gears/quicksilver>,
        "plate": <tag:forge:plates/quicksilver>,
        "rod": <tag:forge:rods/quicksilver>
    },

    "tin": {
        "nugget": <tag:forge:nuggets/tin>,
        "ingot": <tag:forge:ingots/tin>,
        "gem": <tag:forge:gems/tin>,
        "storage_block": <tag:forge:storage_blocks/tin>,
        "ore": <tag:forge:ores/tin>,
        "ore_deposit": <tag:forge:ore_deposit/tin>,
        "dust": <tag:forge:dusts/tin>,
        "gear": <tag:forge:gears/tin>,
        "plate": <tag:forge:plates/tin>,
        "rod": <tag:forge:rods/tin>
    },

    "redstone_alloy": {
        "nugget": <tag:forge:nuggets/redstone_alloy>,
        "ingot": <tag:forge:ingots/redstone_alloy>,
        "gem": <tag:forge:gems/redstone_alloy>,
        "storage_block": <tag:forge:storage_blocks/redstone_alloy>,
        "ore": <tag:forge:ores/redstone_alloy>,
        "ore_deposit": <tag:forge:ore_deposit/redstone_alloy>,
        "dust": <tag:forge:dusts/redstone_alloy>,
        "gear": <tag:forge:gears/redstone_alloy>,
        "plate": <tag:forge:plates/redstone_alloy>,
        "rod": <tag:forge:rods/redstone_alloy>
    },

    "refined_iron": {
        "nugget": <tag:forge:nuggets/refined_iron>,
        "ingot": <tag:forge:ingots/refined_iron>,
        "gem": <tag:forge:gems/refined_iron>,
        "storage_block": <tag:forge:storage_blocks/refined_iron>,
        "ore": <tag:forge:ores/refined_iron>,
        "ore_deposit": <tag:forge:ore_deposit/refined_iron>,
        "dust": <tag:forge:dusts/refined_iron>,
        "gear": <tag:forge:gears/refined_iron>,
        "plate": <tag:forge:plates/refined_iron>,
        "rod": <tag:forge:rods/refined_iron>
    },

    "compressed_iron": {
        "nugget": <tag:forge:nuggets/compressed_iron>,
        "ingot": <tag:forge:ingots/compressed_iron>,
        "gem": <tag:forge:gems/compressed_iron>,
        "storage_block": <tag:forge:storage_blocks/compressed_iron>,
        "ore": <tag:forge:ores/compressed_iron>,
        "ore_deposit": <tag:forge:ore_deposit/compressed_iron>,
        "dust": <tag:forge:dusts/compressed_iron>,
        "gear": <tag:forge:gears/compressed_iron>,
        "plate": <tag:forge:plates/compressed_iron>,
        "rod": <tag:forge:rods/compressed_iron>
    },

    "nickel": {
        "nugget": <tag:forge:nuggets/nickel>,
        "ingot": <tag:forge:ingots/nickel>,
        "gem": <tag:forge:gems/nickel>,
        "storage_block": <tag:forge:storage_blocks/nickel>,
        "ore": <tag:forge:ores/nickel>,
        "ore_deposit": <tag:forge:ore_deposit/nickel>,
        "dust": <tag:forge:dusts/nickel>,
        "gear": <tag:forge:gears/nickel>,
        "plate": <tag:forge:plates/nickel>,
        "rod": <tag:forge:rods/nickel>
    },

    "platinum": {
        "nugget": <tag:forge:nuggets/platinum>,
        "ingot": <tag:forge:ingots/platinum>,
        "gem": <tag:forge:gems/platinum>,
        "storage_block": <tag:forge:storage_blocks/platinum>,
        "ore": <tag:forge:ores/platinum>,
        "ore_deposit": <tag:forge:ore_deposit/platinum>,
        "dust": <tag:forge:dusts/platinum>,
        "gear": <tag:forge:gears/platinum>,
        "plate": <tag:forge:plates/platinum>,
        "rod": <tag:forge:rods/platinum>
    },

    "bismuth": {
        "nugget": <tag:forge:nuggets/bismuth>,
        "ingot": <tag:forge:ingots/bismuth>,
        "gem": <tag:forge:gems/bismuth>,
        "storage_block": <tag:forge:storage_blocks/bismuth>,
        "ore": <tag:forge:ores/bismuth>,
        "ore_deposit": <tag:forge:ore_deposit/bismuth>,
        "dust": <tag:forge:dusts/bismuth>,
        "gear": <tag:forge:gears/bismuth>,
        "plate": <tag:forge:plates/bismuth>,
        "rod": <tag:forge:rods/bismuth>
    },

    "aluminum": {
        "nugget": <tag:forge:nuggets/aluminum>,
        "ingot": <tag:forge:ingots/aluminum>,
        "gem": <tag:forge:gems/aluminum>,
        "storage_block": <tag:forge:storage_blocks/aluminum>,
        "ore": <tag:forge:ores/aluminum>,
        "ore_deposit": <tag:forge:ore_deposit/aluminum>,
        "dust": <tag:forge:dusts/aluminum>,
        "gear": <tag:forge:gears/aluminum>,
        "plate": <tag:forge:plates/aluminum>,
        "rod": <tag:forge:rods/aluminum>
    },

    "uranium": {
        "nugget": <tag:forge:nuggets/uranium>,
        "ingot": <tag:forge:ingots/uranium>,
        "gem": <tag:forge:gems/uranium>,
        "storage_block": <tag:forge:storage_blocks/uranium>,
        "ore": <tag:forge:ores/uranium>,
        "ore_deposit": <tag:forge:ore_deposit/uranium>,
        "dust": <tag:forge:dusts/uranium>,
        "gear": <tag:forge:gears/uranium>,
        "plate": <tag:forge:plates/uranium>,
        "rod": <tag:forge:rods/uranium>
    },

    "bronze": {
        "nugget": <tag:forge:nuggets/bronze>,
        "ingot": <tag:forge:ingots/bronze>,
        "gem": <tag:forge:gems/bronze>,
        "storage_block": <tag:forge:storage_blocks/bronze>,
        "ore": <tag:forge:ores/bronze>,
        "ore_deposit": <tag:forge:ore_deposit/bronze>,
        "dust": <tag:forge:dusts/bronze>,
        "gear": <tag:forge:gears/bronze>,
        "plate": <tag:forge:plates/bronze>,
        "rod": <tag:forge:rods/bronze>
    },

    "invar": {
        "nugget": <tag:forge:nuggets/invar>,
        "ingot": <tag:forge:ingots/invar>,
        "gem": <tag:forge:gems/invar>,
        "storage_block": <tag:forge:storage_blocks/invar>,
        "ore": <tag:forge:ores/invar>,
        "ore_deposit": <tag:forge:ore_deposit/invar>,
        "dust": <tag:forge:dusts/invar>,
        "gear": <tag:forge:gears/invar>,
        "plate": <tag:forge:plates/invar>,
        "rod": <tag:forge:rods/invar>
    },

    "electrum": {
        "nugget": <tag:forge:nuggets/electrum>,
        "ingot": <tag:forge:ingots/electrum>,
        "gem": <tag:forge:gems/electrum>,
        "storage_block": <tag:forge:storage_blocks/electrum>,
        "ore": <tag:forge:ores/electrum>,
        "ore_deposit": <tag:forge:ore_deposit/electrum>,
        "dust": <tag:forge:dusts/electrum>,
        "gear": <tag:forge:gears/electrum>,
        "plate": <tag:forge:plates/electrum>,
        "rod": <tag:forge:rods/electrum>
    },

    "bismuth_brass": {
        "nugget": <tag:forge:nuggets/bismuth_brass>,
        "ingot": <tag:forge:ingots/bismuth_brass>,
        "gem": <tag:forge:gems/bismuth_brass>,
        "storage_block": <tag:forge:storage_blocks/bismuth_brass>,
        "ore": <tag:forge:ores/bismuth_brass>,
        "ore_deposit": <tag:forge:ore_deposit/bismuth_brass>,
        "dust": <tag:forge:dusts/bismuth_brass>,
        "gear": <tag:forge:gears/bismuth_brass>,
        "plate": <tag:forge:plates/bismuth_brass>,
        "rod": <tag:forge:rods/bismuth_brass>
    },

    "aluminum_steel": {
        "nugget": <tag:forge:nuggets/aluminum_steel>,
        "ingot": <tag:forge:ingots/aluminum_steel>,
        "gem": <tag:forge:gems/aluminum_steel>,
        "storage_block": <tag:forge:storage_blocks/aluminum_steel>,
        "ore": <tag:forge:ores/aluminum_steel>,
        "ore_deposit": <tag:forge:ore_deposit/aluminum_steel>,
        "dust": <tag:forge:dusts/aluminum_steel>,
        "gear": <tag:forge:gears/aluminum_steel>,
        "plate": <tag:forge:plates/aluminum_steel>,
        "rod": <tag:forge:rods/aluminum_steel>
    },

    "bismuth_steel": {
        "nugget": <tag:forge:nuggets/bismuth_steel>,
        "ingot": <tag:forge:ingots/bismuth_steel>,
        "gem": <tag:forge:gems/bismuth_steel>,
        "storage_block": <tag:forge:storage_blocks/bismuth_steel>,
        "ore": <tag:forge:ores/bismuth_steel>,
        "ore_deposit": <tag:forge:ore_deposit/bismuth_steel>,
        "dust": <tag:forge:dusts/bismuth_steel>,
        "gear": <tag:forge:gears/bismuth_steel>,
        "plate": <tag:forge:plates/bismuth_steel>,
        "rod": <tag:forge:rods/bismuth_steel>
    },

    "signalum": {
        "nugget": <tag:forge:nuggets/signalum>,
        "ingot": <tag:forge:ingots/signalum>,
        "gem": <tag:forge:gems/signalum>,
        "storage_block": <tag:forge:storage_blocks/signalum>,
        "ore": <tag:forge:ores/signalum>,
        "ore_deposit": <tag:forge:ore_deposit/signalum>,
        "dust": <tag:forge:dusts/signalum>,
        "gear": <tag:forge:gears/signalum>,
        "plate": <tag:forge:plates/signalum>,
        "rod": <tag:forge:rods/signalum>
    },

    "lumium": {
        "nugget": <tag:forge:nuggets/lumium>,
        "ingot": <tag:forge:ingots/lumium>,
        "gem": <tag:forge:gems/lumium>,
        "storage_block": <tag:forge:storage_blocks/lumium>,
        "ore": <tag:forge:ores/lumium>,
        "ore_deposit": <tag:forge:ore_deposit/lumium>,
        "dust": <tag:forge:dusts/lumium>,
        "gear": <tag:forge:gears/lumium>,
        "plate": <tag:forge:plates/lumium>,
        "rod": <tag:forge:rods/lumium>
    },

    "enderium": {
        "nugget": <tag:forge:nuggets/enderium>,
        "ingot": <tag:forge:ingots/enderium>,
        "gem": <tag:forge:gems/enderium>,
        "storage_block": <tag:forge:storage_blocks/enderium>,
        "ore": <tag:forge:ores/enderium>,
        "ore_deposit": <tag:forge:ore_deposit/enderium>,
        "dust": <tag:forge:dusts/enderium>,
        "gear": <tag:forge:gears/enderium>,
        "plate": <tag:forge:plates/enderium>,
        "rod": <tag:forge:rods/enderium>
    },

    "diamond": {
        "nugget": <tag:forge:nuggets/diamond>,
        "ingot": <tag:forge:ingots/diamond>,
        "gem": <tag:forge:gems/diamond>,
        "storage_block": <tag:forge:storage_blocks/diamond>,
        "ore": <tag:forge:ores/diamond>,
        "ore_deposit": <tag:forge:ore_deposit/diamond>,
        "dust": <tag:forge:dusts/diamond>,
        "gear": <tag:forge:gears/diamond>,
        "plate": <tag:forge:plates/diamond>,
        "rod": <tag:forge:rods/diamond>
    },

    "lapis_lazuli": {
        "nugget": <tag:forge:nuggets/lapis_lazuli>,
        "ingot": <tag:forge:ingots/lapis_lazuli>,
        "gem": <tag:forge:gems/lapis_lazuli>,
        "storage_block": <tag:forge:storage_blocks/lapis_lazuli>,
        "ore": <tag:forge:ores/lapis_lazuli>,
        "ore_deposit": <tag:forge:ore_deposit/lapis_lazuli>,
        "dust": <tag:forge:dusts/lapis_lazuli>,
        "gear": <tag:forge:gears/lapis_lazuli>,
        "plate": <tag:forge:plates/lapis_lazuli>,
        "rod": <tag:forge:rods/lapis_lazuli>
    },

    "emerald": {
        "nugget": <tag:forge:nuggets/emerald>,
        "ingot": <tag:forge:ingots/emerald>,
        "gem": <tag:forge:gems/emerald>,
        "storage_block": <tag:forge:storage_blocks/emerald>,
        "ore": <tag:forge:ores/emerald>,
        "ore_deposit": <tag:forge:ore_deposit/emerald>,
        "dust": <tag:forge:dusts/emerald>,
        "gear": <tag:forge:gears/emerald>,
        "plate": <tag:forge:plates/emerald>,
        "rod": <tag:forge:rods/emerald>
    },

    "quartz": {
        "nugget": <tag:forge:nuggets/quartz>,
        "ingot": <tag:forge:ingots/quartz>,
        "gem": <tag:forge:gems/quartz>,
        "storage_block": <tag:forge:storage_blocks/quartz>,
        "ore": <tag:forge:ores/quartz>,
        "ore_deposit": <tag:forge:ore_deposit/quartz>,
        "dust": <tag:forge:dusts/quartz>,
        "gear": <tag:forge:gears/quartz>,
        "plate": <tag:forge:plates/quartz>,
        "rod": <tag:forge:rods/quartz>
    },

    "amethyst": {
        "nugget": <tag:forge:nuggets/amethyst>,
        "ingot": <tag:forge:ingots/amethyst>,
        "gem": <tag:forge:gems/amethyst>,
        "storage_block": <tag:forge:storage_blocks/amethyst>,
        "ore": <tag:forge:ores/amethyst>,
        "ore_deposit": <tag:forge:ore_deposit/amethyst>,
        "dust": <tag:forge:dusts/amethyst>,
        "gear": <tag:forge:gears/amethyst>,
        "plate": <tag:forge:plates/amethyst>,
        "rod": <tag:forge:rods/amethyst>
    },

    "sapphire": {
        "nugget": <tag:forge:nuggets/sapphire>,
        "ingot": <tag:forge:ingots/sapphire>,
        "gem": <tag:forge:gems/sapphire>,
        "storage_block": <tag:forge:storage_blocks/sapphire>,
        "ore": <tag:forge:ores/sapphire>,
        "ore_deposit": <tag:forge:ore_deposit/sapphire>,
        "dust": <tag:forge:dusts/sapphire>,
        "gear": <tag:forge:gears/sapphire>,
        "plate": <tag:forge:plates/sapphire>,
        "rod": <tag:forge:rods/sapphire>
    },

    "malachite": {
        "nugget": <tag:forge:nuggets/malachite>,
        "ingot": <tag:forge:ingots/malachite>,
        "gem": <tag:forge:gems/malachite>,
        "storage_block": <tag:forge:storage_blocks/malachite>,
        "ore": <tag:forge:ores/malachite>,
        "ore_deposit": <tag:forge:ore_deposit/malachite>,
        "dust": <tag:forge:dusts/malachite>,
        "gear": <tag:forge:gears/malachite>,
        "plate": <tag:forge:plates/malachite>,
        "rod": <tag:forge:rods/malachite>
    },

    "ruby": {
        "nugget": <tag:forge:nuggets/ruby>,
        "ingot": <tag:forge:ingots/ruby>,
        "gem": <tag:forge:gems/ruby>,
        "storage_block": <tag:forge:storage_blocks/ruby>,
        "ore": <tag:forge:ores/ruby>,
        "ore_deposit": <tag:forge:ore_deposit/ruby>,
        "dust": <tag:forge:dusts/ruby>,
        "gear": <tag:forge:gears/ruby>,
        "plate": <tag:forge:plates/ruby>,
        "rod": <tag:forge:rods/ruby>
    },

    "redstone": {
        "nugget": <tag:forge:nuggets/redstone>,
        "ingot": <tag:forge:ingots/redstone>,
        "gem": <tag:forge:gems/redstone>,
        "storage_block": <tag:forge:storage_blocks/redstone>,
        "ore": <tag:forge:ores/redstone>,
        "ore_deposit": <tag:forge:ore_deposit/redstone>,
        "dust": <tag:forge:dusts/redstone>,
        "gear": <tag:forge:gears/redstone>,
        "plate": <tag:forge:plates/redstone>,
        "rod": <tag:forge:rods/redstone>
    },

    "glowstone": {
        "nugget": <tag:forge:nuggets/glowstone>,
        "ingot": <tag:forge:ingots/glowstone>,
        "gem": <tag:forge:gems/glowstone>,
        "storage_block": <tag:forge:storage_blocks/glowstone>,
        "ore": <tag:forge:ores/glowstone>,
        "ore_deposit": <tag:forge:ore_deposit/glowstone>,
        "dust": <tag:forge:dusts/glowstone>,
        "gear": <tag:forge:gears/glowstone>,
        "plate": <tag:forge:plates/glowstone>,
        "rod": <tag:forge:rods/glowstone>
    },

    "teslatite": {
        "nugget": <tag:forge:nuggets/teslatite>,
        "ingot": <tag:forge:ingots/teslatite>,
        "gem": <tag:forge:gems/teslatite>,
        "storage_block": <tag:forge:storage_blocks/teslatite>,
        "ore": <tag:forge:ores/teslatite>,
        "ore_deposit": <tag:forge:ore_deposit/teslatite>,
        "dust": <tag:forge:dusts/teslatite>,
        "gear": <tag:forge:gears/teslatite>,
        "plate": <tag:forge:plates/teslatite>,
        "rod": <tag:forge:rods/teslatite>
    }
};

var modPriorities as string[] = [
    "minecraft",
    "kubejs",
    "silents_mechanisms",
	"mekanism",
    "bluepower",
    "botania",
    "mysticalworld",
    "tmechworks",
    "industrialforegoing"
];

for material, types in materials {
    for type, itemTag in types {
        if (itemTag.isItemTag) {
            if (itemTag.items.length > 1) {
                purgeItemTag(itemTag, modPriorities);
            }
        }
    }
}