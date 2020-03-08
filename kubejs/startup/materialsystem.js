// var toolPickaxe = (TOOL_TYPE_PICKAXE, 1);
// var toolShovel = (TOOL_TYPE_SHOVEL, 1);

var oreBlock = blockWithProperties('ore', block.material.rock, TOOL_TYPE_PICKAXE, 1, 3.0, 20.0);
var oreDepositBlock = blockWithProperties('ore_deposit', block.material.earth, TOOL_TYPE_SHOVEL, 1, 3.0, 15.0);

var defaultStorageBlock = blockWithProperties('storage_block', block.material.iron, TOOL_TYPE_PICKAXE, 1, 5.0, 30.0);
var defaultDenseOreBlock = blockWithProperties('dense_ore', block.material.rock, TOOL_TYPE_PICKAXE, 2, 5.0, 30.0);

var oreBlocks = [oreBlock, oreDepositBlock];

var basePartNames = [
  'ingot',
  'dust',
  'nugget'
];


var mekanismProcessingPartNames = [
  //'fluid',
  //'slurry',
  //'clean_slurry',
  //'crystal'
  'dirty_dust',
  'clump',
  'shard'
];

var processingPartNames = [
  'gear',
  'plate',
  'rod'
];

var itemPartNames = basePartNames.concat(mekanismProcessingPartNames).concat(processingPartNames);
var allProcessingPartNames = mekanismProcessingPartNames.concat(processingPartNames);

var materials = [
  material("aluminum", 0xb2bcc4, [], oreBlocks),
  material("bronze", 0xCD7F32, allProcessingPartNames, []),
  material("coal", 0x232326, [], [oreDepositBlock]),
  material("copper", 0x89510d, processingPartNames, oreBlocks),
  material("diamond", 0x8CF4E2, [], [oreDepositBlock]),
  material("electrum", 0xd3c34a, allProcessingPartNames, []),
  material("emerald", 0x21ce43, [], [oreDepositBlock]),
  material("gold", 0xFFFF0B, processingPartNames, [oreDepositBlock]),
  material("iron", 0xD8D8D8, processingPartNames, [oreDepositBlock]),
  material("lapis", 0x1b09a3, [], [oreDepositBlock]),
  material("lead", 0x38375b, processingPartNames, oreBlocks),
  material("redstone", 0xa30808, [], [oreDepositBlock]),
  material("silver", 0xc8c7e0, allProcessingPartNames, oreBlocks),
  material("tin", 0x9CC9D6, processingPartNames, oreBlocks)
  //material("quartz", 0xfffff7, [], []),
  //material("uranium", 0x314736, allProcessingPartNames, oreBlocks),
  //material("tungsten", 0x3d3b3a, itemPartNames, oreBlocks),
  //material("titanium", 0xe5e5e5, itemPartNames, oreBlocks),
  //material("iridium", 0xdfdee8, itemPartNames, oreBlocks),
  //material("chrome", 0x778481, itemPartNames, oreBlocks),
  //material("adamantium", 0x021A20, itemPartNames, []),
  //material("manganese", 0x562b15, itemPartNames, oreBlocks),
  //material("nickel", 0xd1c3b1, itemPartNames, oreBlocks),
  //material("platinum", 0x3a9ba8, itemPartNames, oreBlocks),
];

global.materials = materials;