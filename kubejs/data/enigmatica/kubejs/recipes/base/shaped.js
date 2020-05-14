events.listen('server.datapack.recipes', function (event) {
    event.shaped('pneumaticcraft:speed_upgrade', ['LXL', 'XCX', 'LXL'], {
        L: '#pneumaticcraft:upgrade_components',
        X: 'minecraft:sugar',
        C: 'pneumaticcraft:lubricant_bucket',
    });
});
