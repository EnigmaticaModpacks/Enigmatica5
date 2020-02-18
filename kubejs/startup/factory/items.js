// events.listen('item.registry', function (event) {
//   for (var i = 0; i < materials.length - 1; i++) {
//     for (var j = 0; j < materialPartNames.length - 1; j++) {
//         var item = materials[i] + '_' + materialPartNames[j];
//   // TODO: Check if mod with higher unification priority already has an item in the tag

//         event.create(item)
//         .group('KubeJS')
//         .add();
//     }

//     for (var j = 0; j < blockPartNames.length - 1; j++) {
//         var item = materials[i] + '_' + blockPartNames[j];
        
//         event.createBlockItem(item)
//         .group('KubeJS')
//         .add();
//     }
//   }
// })

// events.listen('server.datapack.tags.items', function (event) {
//   for (var i = 0; i < materials.length - 1; i++) {
//     for (var j = 0; j < allPartNames.length - 1; j++) {
//       var baseTag = 'forge:' + allPartNames[j] + 's'
//       var tag = 'forge:' + allPartNames[j] + 's/' + materials[i];
//       var item = 'kubejs:' + materials[i] + '_' + allPartNames[j];

//       event.get(baseTag).add(item);
//       event.get(tag).add(item);
//     }
//   }
// })