events.listen('block.registry', function (event) {
    // materials.forEach(function (material) {
    //     material.blockParts.forEach(function (block) {
    //         var registryName = material.name + '_' + block.name;

    //         event
    //             .create(registryName)
    //             .texture('kubejs:block/' + registryName)
    //             .material(block.material)
    //             .harvestTool(block.harvestTool, block.harvestLevel)
    //             .hardness(block.hardness)
    //             .resistance(block.resistance);
    //     });
    // });

    event
        .create('compressed_cobblestone_1x')
        .texture('kubejs:block/compressed_cobblestone_1x')
        .material(block.material.rock)
        .harvestTool(TOOL_TYPE_PICKAXE)
        .hardness(3.0)
        .resistance(20);
});
