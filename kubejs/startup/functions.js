//priority: 1000

function material(n, c, i, b) {
    return { name: n, color: c, itemParts: i, blockParts: b };
}

function blockWithProperties(n, m, h, hl, ha, r) {
    return { name: n, material: m, harvestTool: h, harvestLevel: hl, hardness: ha, resistance: r };
}

function simpleOre(harvestLevel) {
    return {
        name: 'ore',
        material: block.material.rock,
        harvestTool: TOOL_TYPE_PICKAXE,
        harvestLevel: harvestLevel,
        hardness: 3.0,
        resistance: 15.0
    };
}
