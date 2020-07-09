events.listen('recipes', function (event) {
    var removals = [
        'mekanism:combiner',
        'mekanism:basic_combining_factory',
        'mekanism:advanced_combining_factory',
        'mekanism:elite_combining_factory',
        'mekanism:ultimate_combining_factory',

        'akashictome:tome',

        'morevanillalib:obsidian_shard'
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
