#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

/*

output : 
    [
        [air, air, air], 
        [air, air, air],
        [air, air, air]
    ]

*/

var air = <item:minecraft:air>;
var recipes as IIngredient[][][IItemStack] = {
    <item:tetra:hammer_base> : 
    [
        [<tag:forge:ingots/steel>, <tag:forge:circuits/basic>, <tag:forge:ingots/steel>], 
        [<tag:forge:ingots/steel>, <tag:morevanillalib:tools>, <tag:forge:ingots/steel>],
        [<tag:forge:ingots/steel>, <tag:forge:circuits/basic>, <tag:forge:ingots/steel>]
    ],
    <item:tetra:core_extractor> : 
    [
        [<tag:forge:ingots/steel>, <tag:forge:circuits/basic>, <tag:forge:ingots/steel>], 
        [<tag:forge:ingots/steel>, <item:industrialforegoing:fluid_extractor>, <tag:forge:ingots/steel>],
        [<tag:forge:ingots/steel>, <tag:forge:circuits/basic>, <tag:forge:ingots/steel>]
    ]
};

for output, input in recipes {
    addShapedMirrored(output, input, false);
}