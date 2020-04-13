events.listen('block.tags', function (event) {
    event.get('forge:ores').add(oreDimensional).add(oreUraninite);
    event.get('forge:ores/dimensional').add(oreDimensional); 
        
})