events.listen('recipes', function (event) {
    var output = 'rftoolsbase:dimensionalshard';
    event.recipes.mekanism.enriching({
        input: {
            ingredient: {
                tag: 'forge:ores/dimensional'
            }
        },
        output: {
            item: output,
            count: 8
        }
    });
});
