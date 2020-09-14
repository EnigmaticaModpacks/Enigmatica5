events.listen('block.registry', function (event) {
    event
        .create('compressed_cobblestone_1x')
        .texture('kubejs:block/compressed_cobblestone_1x')
        .material(block.material.rock)
        .harvestTool(TOOL_TYPE_PICKAXE)
        .hardness(3.0)
        .resistance(20);
});
