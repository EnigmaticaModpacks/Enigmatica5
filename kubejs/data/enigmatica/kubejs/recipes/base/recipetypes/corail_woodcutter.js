events.listen('recipes', function (event) {
    vanillaWoodTypes.forEach(function (woodType) {
        var drying_rack = 'silents_mechanisms/drying_racks/' + woodType;
        var log = 'minecraft:' + woodType + '_logs';
        var wood_floor = 'carpetstairsmod:' + woodType + '_wood_floor';
        var planks = 'minecraft:' + woodType + '_planks';

        // Drying Rack recipe conflicts with Wood Flooring,
        event.remove({ id: drying_rack });

        // Create Woodcutter recipes for both.
        event.recipes.corail_woodcutter.woodcutting({
            ingredient: {
                tag: log,
            },
            result: wood_floor,
            count: 24,
        });
        event.recipes.corail_woodcutter.woodcutting({
            ingredient: {
                item: planks,
            },
            result: wood_floor,
            count: 6,
        });
    });
});
