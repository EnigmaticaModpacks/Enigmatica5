//priority: 950
events.listen('recipes', function (event) {
    //event.remove({ id: 'jaopca:mekanism.dust_to_material.prismarine' });

    event.remove({ type: 'mekanism:combining' });
});
