events.listen('item.tags', function (event) {
    event.get('forge:stones/basalt').add(stoneBasalt);   
    event.get('forge:cobbestones/basalt').add(cobblestoneBasalt); 
})


