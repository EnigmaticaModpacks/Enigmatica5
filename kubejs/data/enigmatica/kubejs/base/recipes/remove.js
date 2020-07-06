events.listen('recipes', function (event) {
    var removals = [
        'mekanism:combiner',
        'mekanism:basic_combining_factory',
        'mekanism:advanced_combining_factory',
        'mekanism:elite_combining_factory',
        'mekanism:ultimate_combining_factory',

        'akashictome:tome',

        'morevanillalib:obsidian_shard',

        'minecraft:stick 16'
    ];

    removals.forEach(function (removal) {
        event.remove({ output: removal });
    });
});
