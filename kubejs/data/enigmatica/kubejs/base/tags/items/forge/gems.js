events.listen('item.tags', function (event) {
    var gems = 'forge:gems';
    var gems_certus = gems + '/certus';
    var gems_charged_certus_quartz = gems + '/charged_certus_quartz';
    var gems_ender = gems + '/ender';
    var gems_fluix = gems + '/fluix';
    var gems_dimensional = gems + '/dimensional';

    event.get(gems_dimensional).add('rftoolsbase:dimensionalshard');

    event.get(gems_ender).add('minecraft:ender_pearl');
    event.get(gems_charged_certus_quartz).add('appliedenergistics2:charged_certus_quartz_crystal');
    event.get(gems_fluix).add('appliedenergistics2:fluix_crystal').add('appliedenergistics2:purified_fluix_crystal');

    event
        .get(gems)
        .add('minecraft:ender_pearl')
        .add('rftoolsbase:dimensionalshard')
        .add('appliedenergistics2:purified_fluix_crystal')
        .add('appliedenergistics2:purified_certus_quartz_crystal');
    event
        .get(gems_certus)
        .add('appliedenergistics2:certus_quartz_crystal')
        .add('appliedenergistics2:charged_certus_quartz_crystal')
        .add('emendatusenigmatica:gem_certus_quartz')
        .add('emendatusenigmatica:gem_charged_certus_quartz')
        .add('appliedenergistics2:purified_certus_quartz_crystal');
});
