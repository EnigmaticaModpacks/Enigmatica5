events.listen('item.tags', function (event) {
    event
        .get('forge:gears')
        .add('emendatusenigmatica:gear_quartz')
        .add('titanium:iron_gear')
        .add('titanium:gold_gear')
        .add('titanium:diamond_gear');
    event.get('forge:gears/quartz').add('emendatusenigmatica:gear_quartz');

    event.get('forge:gears/iron').add('titanium:iron_gear');
    event.get('forge:gears/gold').add('titanium:gold_gear');
    event.get('forge:gears/diamond').add('titanium:diamond_gear');
});
