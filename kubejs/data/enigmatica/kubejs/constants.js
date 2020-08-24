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
    'certus_quartz',
    'charged_certus_quartz',
    'diamond',
    'lapis',
    'emerald',
    'quartz',
    'coal',
    'charcoal',
    'obsidian',
    'ender',
    'fluix',
    'sulfur',
    'saltpeter',
    'fluorite',

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
    'pneumaticcraft',
    'occultism',
    'tmechworks',
    'industrialforegoing',
    'botania',
    'quark',
    'pedestals',
    'appliedenergistics',
    'productivebees'
];

var vanillaWoodTypes = ['oak', 'birch', 'spruce', 'jungle', 'acacia', 'dark_oak'];

var materials = global.materials;
