events.listen('server.datapack.recipes', function (event) {
    if (global.packmode !== packmodes.expert) {
        return;
    }
});
