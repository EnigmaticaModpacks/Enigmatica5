//priority: 999

var oreBlock = blockWithProperties('ore', block.material.rock, TOOL_TYPE_PICKAXE, 1, 3.0, 20.0);
var oreDepositBlock = blockWithProperties('ore_deposit', block.material.earth, TOOL_TYPE_SHOVEL, 1, 3.0, 15.0);

var oreStoneVariants = [
    'minecraft_andesite',
    'minecraft_granite',
    'create_scoria',
    'create_gabbro',
    'create_limestone',
    'create_weathered_limestone',
    'quark_jasper',
    'quark_slate',
    'quark_limestone',
    'quark_marble'
];

var oreVariants = [
    material('coal', 0xffffff, ['chunk'], [simpleOre(0)]),
    material('iron', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('gold', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('diamond', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('emerald', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('redstone', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('lapis', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('copper', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('aluminum', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('lead', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('nickel', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('uranium', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('silver', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('osmium', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('tin', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('zinc', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('uraninite_small', 0xffffff, ['chunk'], [simpleOre(1)]),
    material('uraninite', 0xffffff, ['chunk'], [simpleOre(2)]),
    material('uraninite_dense', 0xffffff, ['chunk'], [simpleOre(2)])
];

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
