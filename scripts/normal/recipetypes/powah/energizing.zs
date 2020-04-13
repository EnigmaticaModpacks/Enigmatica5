#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var output = <item:tetra:magmatic_cell>;

<recipetype:powah:energizing>.addJSONRecipe("energizing/" + output.translationKey + "_" + output.amount,
{
    ingredients: [
        {item: <item:rftoolspower:dimensionalcell_simple>.registryName},
        {item: <item:powah:capacitor_blazing>.registryName},
        {item: <item:powah:capacitor_blazing>.registryName},
    ],
    energy: 250000,
    result: {
        item: output.registryName,
    }
});
