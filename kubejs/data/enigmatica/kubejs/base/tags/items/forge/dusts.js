events.listen('item.tags', function (event) {
    event.get('forge:dusts/lapis').add('mekanism:dust_lapis_lazuli')
    event.get('forge:dusts/copper').add('occultism:copper_dust')
    event.get('forge:dusts/iron').add('occultism:iron_dust')
    event.get('forge:dusts/silver').add('occultism:silver_dust')
    event.get('forge:dusts/gold').add('occultism:gold_dust')
    event
        .get('forge:dusts')
        .add(['occultism:copper_dust', 'occultism:iron_dust', 'occultism:silver_dust', 'occultism:gold_dust'])
})
