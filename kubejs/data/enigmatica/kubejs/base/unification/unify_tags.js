//priority: 900
events.listen('recipes', function (event) {
    materialsToUnify.forEach(function (material) {
        typesToUnify.forEach(function (type) {
            var tagString = '#forge:' + type + 's/' + material;
            var tag = ingredient.of(tagString);
            if (tag.stacks.size() > 1) {
                var prefItem = getPreferredItemInTag(tag);
                console.log('Tag: ' + tag);
                console.log('Tag items: ' + tag.stacks);
                console.log('Prefered item: ' + prefItem);

                event.replaceOutput({}, tagString, prefItem);
            }
        });
    });
});
