//priority: 950
events.listen('recipes', function (event) {
    // Remove Prismarine dupe bug
    event.remove({ id: 'integrateddynamics:mechanical_squeezer/ore/prismarine_crystals' });
    event.remove({ type: 'mekanism:enriching', output: 'minecraft:prismarine_crystals' });

    // Disable the Combiner
    event.remove({ type: 'mekanism:combining' });
});
