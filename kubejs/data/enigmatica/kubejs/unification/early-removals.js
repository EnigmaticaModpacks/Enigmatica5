events.listen('server.datapack.recipes', function (event) {
    event.remove({ type: 'occultism:iron_dust' })
    event.remove({ type: 'occultism:gold_dust' })
    event.remove({ type: 'occultism:silver_dust' })
    event.remove({ type: 'occultism:copper_dust' })

    event.remove({ type: 'mekanism:combining' }) // Remove all combining recipes
})
