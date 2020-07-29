//priority: 950
events.listen('recipes', function (event) {
    // Disable the Combiner
    event.remove({ type: 'mekanism:combining' });
});
