#priority 90

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;


for i, ore in <tag:forge:ores/dimensional>.items {
    var output = <item:rftoolsbase:dimensionalshard>;
    var count = 8;
    <recipetype:mekanism:enriching>.addJSONRecipe("processing/dimensional/gem/from_ore_" + i,
    {
        input: {
            ingredient: {
                item: ore.registryName
            }
            
        },
        output: {
            item: output.registryName,
            count: count
        }
    });
}

    