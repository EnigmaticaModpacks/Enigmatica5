events.listen('item.tags', function (event) {
    event
        .get('minecraft:meats')
        .add('minecraft:beef')
        .add('minecraft:chicken')
        .add('minecraft:porkchop')
        .add('minecraft:mutton');
});
