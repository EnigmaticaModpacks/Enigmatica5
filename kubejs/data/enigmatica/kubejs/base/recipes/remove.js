events.listen('recipes', function (event) {
    var removals = [
        'mekanism:combiner',
        'mekanism:basic_combining_factory',
        'mekanism:advanced_combining_factory',
        'mekanism:elite_combining_factory',
        'mekanism:ultimate_combining_factory',

        'akashictome:tome',

        'morevanillalib:obsidian_shard',

        'decorative_blocks:hellbark_beam',
        'decorative_blocks:jungle_beam',
        'decorative_blocks:birch_beam',
        'decorative_blocks:umbran_beam',
        'decorative_blocks:jacaranda_beam',
        'decorative_blocks:magic_beam',
        'decorative_blocks:palm_beam',
        'decorative_blocks:mahogany_beam',
        'decorative_blocks:willow_beam',
        'decorative_blocks:acacia_beam',
        'decorative_blocks:cherry_beam',
        'decorative_blocks:fir_beam',
        'decorative_blocks:dark_oak_beam',
        'decorative_blocks:oak_beam',
        'decorative_blocks:redwood_beam',
        'decorative_blocks:dead_beam',
        'decorative_blocks:spruce_beam'
    ];

    removals.forEach(function (removal) {
        event.remove({ output: removal });
    });

    // event.remove({
    //     output: ingredient.custom(function (stack) {
    //         return stack.id === 'minecraft:stick' && stack.count === 16;
    //     })
    // });
});
