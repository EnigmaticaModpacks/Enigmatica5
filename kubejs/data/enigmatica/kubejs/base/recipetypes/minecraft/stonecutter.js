events.listen('recipes', function (event) {
    vanillaWoodTypes.forEach(function (woodType) {
        event.recipes.minecraft.stonecutting(
            item.of('carpetstairsmod:' + woodType + '_wood_floor', 6),
            'minecraft:' + woodType + '_planks'
        );
        event.recipes.minecraft.stonecutting(
            item.of('carpetstairsmod:' + woodType + '_wood_floor', 24),
            '#minecraft:' + woodType + '_logs'
        );
    });

    var stoneCutterRemovals = [
        'minecraft:iron_ingot',
        'minecraft:string',
        'minecraft:iron_nugget',
        'minecraft:bone',
        'minecraft:gold_ingot',
        'minecraft:gold_nugget'
    ];
    stoneCutterRemovals.forEach(function (item) {
        event.remove({ type: 'minecraft:stonecutting', output: item });
    });

    var conversionTypes = ['storage_blocks', 'ores'];

    // Conversion between different blocks of the same material
    conversionTypes.forEach(function (type) {
        materialsToUnify.forEach(function (material) {
            var tag = ingredient.of('#forge:' + type + '/' + material);
            if (tag.stacks.size() > 1) {
                tag.stacks.forEach(function (block) {
                    event.recipes.minecraft.stonecutting({
                        ingredient: {
                            tag: 'forge:' + type + '/' + material
                        },
                        result: block.id,
                        count: 1
                    });
                });
            }
        });
    });

    // Conversion between different blocks of the same material
    stoneTypes.forEach(function (stoneType) {
        var tag = ingredient.of('#forge:stones/' + stoneType);
        if (tag.stacks.size() > 1) {
            tag.stacks.forEach(function (block) {
                event.recipes.minecraft.stonecutting({
                    ingredient: {
                        tag: 'forge:stones/' + stoneType
                    },
                    result: block.id,
                    count: 1
                });
            });
        }
    });

    // Conversion between Steel Ingot types,
    // ugly hack to make IE villager trades for orevein maps
    // (they require IE steel)
    ingredient.of('#forge:ingots/steel').stacks.forEach(function (ingot) {
        event.recipes.minecraft.stonecutting({
            ingredient: {
                tag: 'forge:ingots/steel'
            },
            result: ingot.id,
            count: 1
        });
    });
});
