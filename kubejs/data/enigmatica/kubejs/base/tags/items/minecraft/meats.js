events.listen('item.tags', function (event) {
    event.get('minecraft:meats').add('minecraft:beef');
    event.get('minecraft:meats').add('minecraft:chicken');
    event.get('minecraft:meats').add('minecraft:porkchop');
    event.get('minecraft:meats').add('minecraft:mutton');
});
