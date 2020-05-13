events.listen('server.datapack.recipes', function (event) {
    event.remove({ output: 'occultism:iron_dust' });
    event.remove({ output: 'occultism:gold_dust' });
    event.remove({ output: 'occultism:silver_dust' });
    event.remove({ output: 'occultism:copper_dust' });

    event.remove({ type: 'mekanism:combining' }); // Remove all combining recipes
});
