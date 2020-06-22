events.listen('recipes', function (event) {
    var recipes = [shapelessRecipe('botania:enchanted_soil', ['minecraft:grass_block', 'botania:overgrowth_seed'])];

    recipes.forEach(function (recipe) {
        event.shapeless(recipe.result, recipe.ingredients);
    });
});
