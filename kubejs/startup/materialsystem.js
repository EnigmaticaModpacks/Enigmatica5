//priority: 999

var oreBlock = blockWithProperties('ore', block.material.rock, TOOL_TYPE_PICKAXE, 1, 3.0, 20.0);
var oreDepositBlock = blockWithProperties('ore_deposit', block.material.earth, TOOL_TYPE_SHOVEL, 1, 3.0, 15.0);

var materials = [
    material('aluminum', 0xb2bcc4, [], [oreDepositBlock]),
    material('bronze', 0xcd7f32, [], []),
    material('coal', 0x232326, [], [oreDepositBlock]),
    material('copper', 0x89510d, [], [oreDepositBlock]),
    material('diamond', 0x8cf4e2, [], [oreDepositBlock]),
    material('electrum', 0xd3c34a, [], []),
    material('emerald', 0x21ce43, [], [oreDepositBlock]),
    material('gold', 0xffff0b, [], [oreDepositBlock]),
    material('iron', 0xd8d8d8, [], [oreDepositBlock]),
    material('lapis', 0x1b09a3, [], [oreDepositBlock]),
    material('lead', 0x38375b, [], [oreDepositBlock]),
    material('redstone', 0xa30808, [], [oreDepositBlock]),
    material('silver', 0xc8c7e0, [], [oreDepositBlock]),
    material('uranium', 0x314736, [], [oreDepositBlock]),
    material('tin', 0x9cc9d6, [], [oreDepositBlock])
];

global.oreStoneVariants = oreStoneVariants;
global.oreVariants = oreVariants;
global.materials = materials;
