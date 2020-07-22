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
