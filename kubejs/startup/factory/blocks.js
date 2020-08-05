events.listen('block.registry', function (event) {
    materials.forEach(function (material) {
        material.blockParts.forEach(function (block) {
            var registryName = material.name + '_' + block.name;

            event
                .create(registryName)
                .texture('kubejs:block/' + registryName)
                .material(block.material)
                .harvestTool(block.harvestTool, block.harvestLevel)
                .hardness(block.hardness)
                .resistance(block.resistance);
        });
    });

    // oreStoneVariants.forEach(function (stoneVariant) {
    //     oreVariants.forEach(function (oreVariant) {
    //         var registryName = stoneVariant + '_' + oreVariant.name + '_ore';
    //         var block = oreVariant.blockParts[0];
    //         event
    //             .create(registryName)
    //             .texture('kubejs:block/' + registryName)
    //             .material(block.material)
    //             .harvestTool(block.harvestTool, block.harvestLevel)
    //             .hardness(block.hardness)
    //             .resistance(block.resistance);
    //     });
    // });
});
