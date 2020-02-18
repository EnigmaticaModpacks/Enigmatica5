// events.listen('block.registry', function (event) {
//   for (var i = 0; i < materials.length - 1; i++) {   
//   // TODO: Check if mod with higher unification priority already has an item in the tag
 
//     event.create(materials[i] + '_storage_block')
//     .material(block.material.iron)
//     .harvestTool(TOOL_TYPE_PICKAXE, 1)
//     .hardness(5.0)
//     .resistance(30.0)
//     .add();

//     event.create(materials[i] + '_ore_deposit')
//     .material(block.material.earth)
//     .harvestTool(TOOL_TYPE_SHOVEL, 1)
//     .hardness(0.8)
//     .resistance(4.0)
//     .add();

    
//   }

//   // TODO: Create Ores out of the loop
//   // event.create(materials[i] + '_ore')
//     // .material(block.material.rock)
//     // .harvestTool(TOOL_TYPE_PICKAXE, 1)
//     // .hardness(4.0)
//     // .resistance(15.0)
//     // .add();
// })

// events.listen('server.datapack.tags.blocks', function (event) {
//   for (var i = 0; i < materials.length - 1; i++) {
//     for (var j = 0; j < blockPartNames.length - 1; j++) {
//       var baseTag = 'forge:' + materialPartNames[j] + 's'
//       var tag = 'forge:' + materialPartNames[j] + 's/' + materials[i];
//       var item = 'kubejs:' + materials[i] + '_' + materialPartNames[j];
      
//       event.get(baseTag).add(item);
//       event.get(tag).add(item);
//     }
//   }
// })

// //    console.info("SEARCHME");     
// //console.info(block.material.keySet());