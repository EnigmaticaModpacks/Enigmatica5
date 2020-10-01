events.listen('item.tags', function (event) {
    var hoes = [
        'minecraft:wooden_hoe',
        'minecraft:stone_hoe',
        'minecraft:iron_hoe',
        'minecraft:diamond_hoe',
        'minecraft:golden_hoe',
        'aquaculture:neptunium_hoe',
        'cyclic:crystal_hoe',
        'cyclic:emerald_hoe',
        'cyclic:sandstone_hoe',
        'cyclic:netherbrick_hoe',
        'immersiveengineering:hoe_steel',
        'mekanismtools:bronze_hoe',
        'mekanismtools:lapis_lazuli_hoe',
        'mekanismtools:osmium_hoe',
        'mekanismtools:refined_glowstone_hoe',
        'mekanismtools:refined_obsidian_hoe',
        'mekanismtools:steel_hoe',
        'naturesaura:infused_iron_hoe',
        'naturesaura:sky_hoe'
    ];
    hoes.forEach(function (hoe) {
        event.get('enigmatica:hoes').add(hoe);
    });
});
