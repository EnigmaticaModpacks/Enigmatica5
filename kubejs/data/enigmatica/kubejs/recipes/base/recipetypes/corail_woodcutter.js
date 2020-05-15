events.listen('recipes', function (event) {
    vanillaWoodTypes.forEach(function (woodType) {
        // Drying Rack conflucts with Wood Flooring,
        // Remove Drying Rack recipe and make Woodcutter recipes for both.
        var drying_rack = 'silents_mechanisms:' + woodType + '_drying_rack';
        event.remove({ output: drying_rack });
        event.recipes.corail_woodcutter.woodcutting({
            ingredient: {
                tag: 'minecraft:' + woodType + '_logs',
            },
            result: 'carpetstairsmod:' + woodType + '_wood_floor',
            count: 24,
        });
        event.recipes.corail_woodcutter.woodcutting({
            ingredient: {
                item: 'minecraft:' + woodType + '_planks',
            },
            result: 'carpetstairsmod:' + woodType + '_wood_floor',
            count: 6,
        });
    });
});
