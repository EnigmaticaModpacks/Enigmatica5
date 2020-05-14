events.listen('server.datapack.recipes', function (event) {
    var recipes = [
        recipe('pneumaticcraft:speed_upgrade', ['LXL', 'XCX', 'LXL'], {
            L: '#pneumaticcraft:upgrade_components',
            X: 'minecraft:sugar',
            C: 'pneumaticcraft:lubricant_bucket',
        }),
    ];

    recipes.forEach(function (recipe) {
        event.shaped(recipe.result, recipe.pattern, recipe.key);
    });
});
