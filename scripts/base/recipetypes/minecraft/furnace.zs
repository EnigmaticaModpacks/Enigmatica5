#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var recipes as IItemStack[IItemStack] = {
    <item:create:crushed_copper_ore> : <tag:forge:ingots/copper>.firstItem,
    <item:jaopca:create_crushed_ores.silver> : <tag:forge:ingots/silver>.firstItem
};

var xp = 0.1;
var processingTime = 100;

for input, output in recipes {
    blastFurnace.addRecipe("blasting_" + formatRecipeName(output) + "_from_occultism_dust", output, input, xp, processingTime / 2);
    furnace.addRecipe("smelting_" + formatRecipeName(output) + "_from_occultism_dust", output, input, xp, processingTime);
}
