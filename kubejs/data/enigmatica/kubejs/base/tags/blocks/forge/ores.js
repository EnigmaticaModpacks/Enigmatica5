events.listen('block.tags', function (event) {
    event.get('forge:ores').add(oreDimensional).add(oreUraninite)
    event.get('forge:ores/dimensional').add(oreDimensional)
	event.get('forge:ores').add('create:zinc_ore')
	event.get('forge:ores').add('occultism:iesnium_ore')
})
