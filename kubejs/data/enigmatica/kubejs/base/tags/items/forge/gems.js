events.listen('item.tags', function (event) {
    var gems = 'forge:gems';
    var gems_ender = gems + '/ender';
    var gems_dimensional = gems + '/dimensional';

    event.get(gems_dimensional).add('rftoolsbase:dimensionalshard');

    event.get(gems_ender).add('minecraft:ender_pearl');

    event.get(gems).add('minecraft:ender_pearl').add('rftoolsbase:dimensionalshard');
});
