events.listen('recipes', function (event) {
    var recipes = [
        shapedRecipe('tetra:hammer_base', ['LXL', 'LCL', 'LXL'], {
            L: '#forge:ingots/steel',
            X: '#forge:circuits/basic',
            C: '#morevanillalib:tools'
        }),
        shapedRecipe('tetra:core_extractor', ['LXL', 'LCL', 'LXL'], {
            L: '#forge:ingots/steel',
            X: '#forge:circuits/basic',
            C: 'industrialforegoing:fluid_extractor'
        }),
        shapedRecipe('minecraft:stick 16', ['L', 'L'], {
            A: '#minecraft:logs'
        })

        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     A: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     A: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     L: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     L: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     L: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     L: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     L: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // }),
        // shapedRecipe('', ['LLL', 'LLL', 'LLL'], {
        //     L: '#minecraft:logs',
        //     B: '',
        //     C: ''
        // })
    ];

    recipes.forEach(function (recipe) {
        event.shaped(recipe.result, recipe.pattern, recipe.key);
    });
});
