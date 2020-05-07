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
    "lapis_lazuli",
    "emerald",
    "quartz",

    "redstone",
    "glowstone"
];

for material in materials {
    enigmatica_ore_deposit_processing(material);
}

// for material, types in materials {
//     for type, itemTag in types {
//         if (type == "ore_deposits") {
//             if (itemTag.isItemTag) {
//                 enigmatica_ore_deposit_processing(material);
//             }
//         }
//     }
// }