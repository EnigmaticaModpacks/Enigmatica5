events.listen('item.tags', function (event) {
    event.get('forge:ingots').add('powah:uraninite')
    event.get('forge:ingots/uraninite').add('powah:uraninite')

    event.get('forge:ingots/radioactive').add('#forge:ingots/uraninite').add('#forge:ingots/uranium')
})
