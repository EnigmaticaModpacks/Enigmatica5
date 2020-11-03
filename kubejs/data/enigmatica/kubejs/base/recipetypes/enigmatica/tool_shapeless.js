events.listen('recipes', function (event) {
    event.recipes.enigmatica.tool_shapeless({
        ingredients: [
            {
                tag: 'enigmatica:hoes'
            },
            {
                item: 'farmersdelight:rich_soil'
            }
        ],
        result: {
            item: 'farmersdelight:rich_soil_farmland'
        }
    });
});
