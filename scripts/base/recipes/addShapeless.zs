#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

/*

output :
[air, air, air]

*/
var air = <item:minecraft:air>;
var recipes as IIngredient[][IItemStack] = {
	<item:minecraft:flint> : 
    [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>],

    <item:simplefarming:cornbread> : 
    [<tag:forge:grain>, <tag:forge:crops/corn>, <tag:forge:grain>],

    <item:minecraft:chest> :
    [<tag:forge:chests/wooden>],
	
	<item:minecraft:crafting_table> :
    [<item:craftingstation:crafting_station_slab>, <item:craftingstation:crafting_station_slab>], 

    <item:simplefarming:fish_sandwich> :
    [<tag:forge:bread>, <item:aquaculture:fish_fillet_cooked>, <item:aquaculture:fish_fillet_cooked>, <tag:forge:crops/tomato>, <tag:forge:salad_ingredients>],

    <item:simplefarming:sushi> :
    [<tag:forge:grain>, <item:minecraft:dried_kelp>, <item:aquaculture:fish_fillet_raw>, <item:aquaculture:fish_fillet_raw>],

    <item:simplefarming:fish_fillet> :
    [<tag:forge:grain>, <tag:forge:grain>, <item:aquaculture:fish_fillet_cooked>, <item:aquaculture:fish_fillet_cooked>],

    <item:akashictome:tome>.withTag({"akashictome:is_morphing": 1, "akashictome:data": {
        modularrouters: {id: "patchouli:guide_book" as string, Count: 1, tag: {"patchouli:book": "modularrouters:book" as string}}, 
        powah: {id: "powah:book" as string, Count: 1, tag: {"akashictome:displayName": "{\"translate\":\"item.powah.book\"}" as string, "akashictome:is_morphing": 1, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"translate\":\"item.powah.book\"}]}" as string}}}, 
        rftoolsbase: {id: "patchouli:guide_book" as string, Count: 1, tag: {"patchouli:book": "rftoolsbase:manual" as string}}, 
        naturesaura: {id: "patchouli:guide_book" as string, Count: 1, tag: {"akashictome:displayName": "{\"translate\":\"item.naturesaura.book.name\"}" as string, "patchouli:book": "naturesaura:book" as string, "akashictome:is_morphing": 1, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"translate\":\"item.naturesaura.book.name\"}]}" as string}}}, 
        transport: {id: "patchouli:guide_book" as string, Count: 1, tag: {"patchouli:book": "transport:guide" as string}}, 
        engineersdecor: {id: "patchouli:guide_book" as string, Count: 1, tag: {"patchouli:book": "engineersdecor:engineersdecor_manual" as string}}, 
        psi: {id: "patchouli:guide_book" as string, Count: 1, tag: {"patchouli:book": "psi:encyclopaedia_psionica" as string}},
        pneumaticcraft: {id: "patchouli:guide_book" as string, Count: 1, tag: {"patchouli:book": "pneumaticcraft:book" as string}},
        occultism: {id: "occultism:dictionary_of_spirits" as string, Count: 1},
        solcarrot: {id: "solcarrot:food_book" as string, Count: 1},
        immersiveengineering: {id: "immersiveengineering:manual" as string, Count: 1}}}) :
    [<item:minecraft:book>, <tag:forge:bookshelves>],

    <item:tetra:magmatic_cell> :
    [<item:tetra:magmatic_cell>.withTag({Damage: 128}), <item:powah:capacitor_blazing>, <item:powah:capacitor_blazing>],

    <item:minecraft:wheat_seeds> :
    [<item:minecraft:wheat>]
};

for output, input in recipes {
    addShapeless(output, input, false);
}