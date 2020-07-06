//priority: 950
events.listen('recipes', function (event) {
    event.remove({ id: 'integrateddynamics:mechanical_squeezer/ore/prismarine_crystals' });

    event.remove({ type: 'mekanism:combining' });
});
