//priority: 900
events.listen('recipes', function (event) {
    materialsToUnify.forEach(function (material) {
        typesToUnify.forEach(function (type) {
            var tagString = '#forge:' + type + 's/' + material;
            var tag = ingredient.of(tagString);
            var prefItem = getPreferredItemInTag(tag, modPriorities);
            event.replaceOutput({}, tagString, prefItem);
        });
    });
});
