//priority: 1001

function unificationBlacklistEntry(material, type) {
    return { material: material, type: type };
}

var air = 'minecraft:air';

var oreDimensional = [
    'rftoolsbase:dimensionalshard_overworld',
    'rftoolsbase:dimensionalshard_nether',
    'rftoolsbase:dimensionalshard_end'
];
var createStoneTypes = ['limestone', 'weathered_limestone', 'dolomite', 'gabbro', 'scoria', 'dark_scoria'];

var stoneTypes = ['granite', 'diorite', 'andesite', 'marble', 'limestone', 'jasper', 'slate', 'basalt'];

var oreUraninite = ['powah:uraninite_ore_poor', 'powah:uraninite_ore', 'powah:uraninite_ore_dense'];

var colors = [
    'cyan',
    'purple',
    'blue',
    'brown',
    'green',
    'red',
    'black',
    'white',
    'orange',
    'magenta',
    'light_blue',
    'yellow',
    'lime',
    'pink',
    'gray',
    'light_gray'
];

var typesToUnify = [
    'nugget',
    'ingot',
    'gem',
    'storage_block',
    'ore',
    'dust',
    'gear',
    'plate',
    'rod'
    //'ore_deposit',
    // 'dirty_dust',
    // 'clump',
    // 'shard',
    // 'crystal'
];

var materialsToUnify = [
    'iron',
    'gold',
    'copper',
    'silver',
    'zinc',
    'brass',
    'lead',
    'tin',
    'compressed_iron',
    'nickel',
    'aluminum',
    'uranium',
    'bronze',
    'electrum',
    'constantan',
    'steel',
    'osmium',
    'diamond',
    'lapis',
    'emerald',
    'quartz',
    'coal',
    'charcoal',
    'obsidian',
    'ender',
    'fluix',
    'saltpeter',
    'fluorite',
    'invar',
    'signalum',
    'lumium',
    'enderium',
    'sulfur',
    'cinnabar',
    'niter',
    'apatite',

    'redstone',
    'glowstone'
];

var unificationBlacklist = [
    unificationBlacklistEntry('quartz', 'gem'),
    unificationBlacklistEntry('quartz', 'storage_block')
];

var modPriorities = [
    'emendatusenigmatica',
    'minecraft',
    'immersiveengineering',
    'create',
    'mekanism',
    'jaopca',
    'kubejs',
    'thermal',
    'pneumaticcraft',
    'occultism',
    'tmechworks',
    'industrialforegoing',
    'botania',
    'quark',
    'pedestals',
    'productivebees'
];

var biomesOPlentyWoodTypes = [
    'dead',
    'umbran',
    'hellbark',
    'redwood',
    'mahogany',
    'cherry',
    'magic',
    'jacaranda',
    'palm',
    'fir',
    'willow'
];

var vanillaWoodTypes = ['oak', 'birch', 'spruce', 'jungle', 'acacia', 'dark_oak'];

var materials = global.materials;
