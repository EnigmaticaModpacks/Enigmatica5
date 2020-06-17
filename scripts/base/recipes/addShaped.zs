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
	<item:minecraft:stick> * 16 : 
    [
        [<tag:minecraft:logs>], 
        [<tag:minecraft:logs>]
    ],
    <item:minecraft:chest> : 
    [
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>], 
        [<tag:minecraft:planks>, air, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecraft:hopper> : 
    [
        [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>], 
        [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>],
        [air, <tag:forge:ingots/iron>, air]
    ],
    <item:simplefarming:fish_and_chips> : 
    [
        [air, <tag:forge:crops/potato>, air], 
        [<tag:forge:grain>, <item:aquaculture:fish_fillet_cooked>, <tag:forge:grain>],
        [air, <tag:forge:crops/potato>, air]
    ],
    <item:minecraft:furnace> : 
    [
        [<tag:forge:stone>, <tag:forge:stone>, <tag:forge:stone>], 
        [<tag:forge:stone>, air, <tag:forge:stone>],
        [<tag:forge:stone>, <tag:forge:stone>, <tag:forge:stone>]
    ],
    <item:immersiveengineering:treated_wood_horizontal> * 8 : 
    [
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>], 
        [<tag:minecraft:planks>, <item:immersiveengineering:creosote_bucket>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ]
};

for output, input in recipes {
    addShaped(output, input, false);
}
