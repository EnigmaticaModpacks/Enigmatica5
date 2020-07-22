//priority: 900
events.listen('recipes', function (event) {
    materialsToUnify.forEach(function (material) {
        typesToUnify.forEach(function (type) {
            var tagString = '#forge:' + type + 's/' + material;
            var tag = ingredient.of(tagString);
            if (tag.stacks.size > 1) {
                var prefItem = getPreferredItemInTag(tag);
                event.replaceOutput({}, tagString, prefItem);
            }
        });
    });
});
//stone variant tags
events.listen('item.tags', function (event) {
    var stones = ['scoria','natural_scoria','limestone','weathered_limestone','dolomite','gabbro','dark_scoria'];
    stones.forEach(function(stone) { event.get('forge:stones/' + stone).add('create:'+ stone) });
});
events.listen('block.tags', function (event) {
    var stones = ['scoria','natural_scoria','limestone','weathered_limestone','dolomite','gabbro','dark_scoria'];
    stones.forEach(function(stone) { event.get('forge:stones/' + stone).add('create:'+ stone) });
});
