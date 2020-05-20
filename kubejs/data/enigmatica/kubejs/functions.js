function shapedRecipe(result, pattern, key) {
    return { result: result, pattern: pattern, key: key };
}

function shapelessRecipe(result, key) {
    return { result: result, key: key };
}

// function getPreferredItemInTag(tag, modPriorities) {
//     for (var i = 0; i < tag.length - 1; i++) {
//         var item = tag[i];
//         for (var j = 0; j < modPriorities.length - 1; j++) {
//             if (item.mod == modPriorities[j]) {
//                 return item.toString();
//             }
//         }
//     }
//     return tag[0].toString();
// }

// function purgeItemTag(tag, modPriorities) {
//     var preferredItem = getPreferredItemInTag(tag, modPriorities);
//     console.log('Preferred Item is: ' + preferredItem);
//     var tagAsArray = tag.stacks.toArray();
//     for (var i = 0; i < tagAsArray.length; i++) {
//         var sanitizedItem = tagAsArray[i].toString();
//         var sanitizedTag = tag.toString().replace('#', '');
//         console.log('Sanitized Item:' + sanitizedItem);
//         console.log('Sanitized Tag:' + sanitizedTag);

//         if (sanitizedItem !== preferredItem) {
//             console.log('3Purging item ' + sanitizedItem);
//             events.listen('item.tags', function (event) {
//                 event.get(sanitizedTag).remove([sanitizedItem]);
//             });

//             // Fallback recipe
//             events.listen('recipes', function (event) {
//                 event.shapeless(preferredItem, [sanitizedItem]);
//             });
//         }
//     }
// }
