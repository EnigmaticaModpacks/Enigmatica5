// // Goes through all materials in the materialsToUnify list,
// // and then all types (ingots, nuggets etc) and makes sure they all only contain 1 or fewer entries.
// // That way tags can be used to only get the 1 item we want to use
// var tagsToUnify = [];

// var modPriorities = ['minecraft', 'pneumaticcraft', 'silents_mechanisms', 'mekanism', 'jaopca'];

// events.listen('item.tags', function (event) {
//     console.log('Running unify-tags');
//     materialsToUnify.forEach(function (material) {
//         types.forEach(function (type) {
//             var tag = 'forge:' + type + '/' + material;
//             var tagIngredient = ingredient.of('#' + tag);
//             if (tagIngredient !== null && tagIngredient.stacks !== null) {
//                 if (tagIngredient.stacks.size() > 1) {
//                     var tagIngredientAsArray = tagIngredient.stacks.toArray();
//                     var preferredItem = getPreferredItemInTag(tagIngredientAsArray, modPriorities);
//                     console.log('5Preferred Item is: ' + preferredItem);
//                 }
//             }
//         });
//     });
// });
