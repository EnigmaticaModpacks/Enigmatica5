events.listen('block.tags', function (event) {
    event.get('forge:ores').add(oreDimensional).add(oreUraninite);
    event.get('forge:ores/dimensional').add(oreDimensional);
    event.get('forge:ores').add('create:zinc_ore');
    event.get('forge:ores').add('occultism:iesnium_ore');

    var unusedOres = [
        'create:copper_ore',
        'mekanism:copper_ore',
        'occultism:copper_ore',
        'occultism:silver_ore',
        'tmechworks:aluminum_ore',
        'tmechworks:copper_ore'
    ];

    event.get('forge:ores').remove(unusedOres);
    event
        .get('forge:ores/copper')
        .remove(['create:copper_ore', 'mekanism:copper_ore', 'occultism:copper_ore', 'tmechworks:copper_ore']);

    event.get('forge:ores/silver').remove('occultism:silver_ore');
    event.get('forge:ores/aluminum').remove('tmechworks:aluminum_ore');
});
