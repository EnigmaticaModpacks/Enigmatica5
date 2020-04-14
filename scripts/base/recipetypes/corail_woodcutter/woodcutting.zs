#priority 90

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var vanillaWoodTypes as string[] = [
    "oak",
    "birch",
    "spruce",
    "jungle",
    "acacia",
    "dark_oak"
];

for woodType in vanillaWoodTypes {
    var drying_rack = BracketHandlers.getItem("silents_mechanisms:" + woodType + "_drying_rack");
    removeRecipe(drying_rack);
    
    <recipetype:corail_woodcutter:woodcutting>.addJSONRecipe(woodType + "_wood_floor_from_" + woodType + "_log",
    {
        ingredient: {
            tag: "minecraft:" + woodType + "_logs"            
        },
        result: "carpetstairsmod:" + woodType + "_wood_floor", count: 24
    });

    <recipetype:corail_woodcutter:woodcutting>.addJSONRecipe(woodType + "_wood_floor_from_" + woodType + "_planks",
    {
        ingredient: {
            item: "minecraft:" + woodType + "_planks"            
        },
        result: "carpetstairsmod:" + woodType + "_wood_floor", count: 6
    });
}