events.listen('block.tags', function (event) {
    event
        .get('forge:stones/basalt')
        .add([
            'quark:basalt',
            'quark:chiseled_basalt_bricks',
            'quark:basalt_pavement',
            'quark:basalt_pillar',
            'quark:polished_basalt',
            'quark:basalt_bricks'
        ]);
    event
        .get('forge:stones/slate')
        .add(['quark:slate', 'quark:polished_slate', 'quark:slate_bricks', 'quark:chiseled_slate_bricks']);
    event
        .get('forge:stones/limestone')
        .add([
            'quark:limestone',
            'quark:polished_limestone',
            'quark:limestone_bricks',
            'quark:chiseled_limestone_bricks'
        ]);
    event
        .get('forge:stones/jasper')
        .add(['quark:jasper', 'quark:polished_jasper', 'quark:jasper_bricks', 'quark:chiseled_jasper_bricks']);
    event
        .get('forge:stones/granite')
        .add([
            'minecraft:granite',
            'minecraft:polished_granite',
            'quark:granite_bricks',
            'quark:chiseled_granite_bricks'
        ]);
    event
        .get('forge:stones/diorite')
        .add([
            'minecraft:diorite',
            'minecraft:polished_diorite',
            'quark:diorite_bricks',
            'quark:chiseled_diorite_bricks'
        ]);
    event
        .get('forge:stones/andesite')
        .add([
            'minecraft:andesite',
            'minecraft:polished_andesite',
            'quark:andesite_bricks',
            'quark:chiseled_andesite_bricks'
        ]);

    event
        .get('forge:stones/marble')
        .add([
            'quark:marble',
            'quark:polished_marble',
            'quark:marble_bricks',
            'quark:chiseled_marble_bricks',
            'astralsorcery:marble_arch',
            'astralsorcery:marble_bricks',
            'astralsorcery:marble_chiseled',
            'astralsorcery:marble_engraved',
            'astralsorcery:marble_raw',
            'astralsorcery:marble_runed'
        ]);

    createStoneTypes.forEach(function (stone) {
        event.get('forge:stones/' + stone).add('create:' + stone);
    });
});
