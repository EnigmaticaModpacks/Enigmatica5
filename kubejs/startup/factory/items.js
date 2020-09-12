events.listen('item.registry', function (event) {
    materials.forEach(function (material) {
        material.itemParts.forEach(function (item) {
            var registryName = material.name + '_' + item;

            event
                .create(registryName)
                .group('KubeJS')
                .texture('kubejs:item/' + registryName)
                .add();
        });
    });

    // oreVariants.forEach(function (oreVariant) {
    //     oreVariant.itemParts.forEach(function (item) {
    //         var registryName = oreVariant.name + '_' + item;
    //         event
    //             .create(registryName)
    //             .group('KubeJS')
    //             .texture('kubejs:item/' + registryName)
    //             .add();
    //     });
    // });
});
