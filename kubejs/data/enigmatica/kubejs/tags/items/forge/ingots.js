events.listen('item.tags', function (event) {
    event.get('forge:ingots').add('powah:uraninite');   
    event.get('forge:ingots/uranium').add('powah:uraninite'); 
})