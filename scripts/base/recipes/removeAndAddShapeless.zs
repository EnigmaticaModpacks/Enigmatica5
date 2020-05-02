#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var air = <item:minecraft:air>;
var recipes as IIngredient[][IItemStack] = {
    <item:minecraft:sticky_piston> :
    [<item:minecraft:piston>, <tag:forge:slimeballs>]
};

for output, input in recipes {
    addShapeless(output, input, true);
}