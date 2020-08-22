events.listen('item.tags', function (event) {
    event.get('forge:dusts/lapis').add('mekanism:dust_lapis_lazuli');
    event
        .get('forge:dusts')
        .add('immersiveengineering:dust_aluminum')
        .add('immersiveengineering:dust_lead')
        .add('immersiveengineering:dust_silver')
        .add('immersiveengineering:dust_nickel')
        .add('immersiveengineering:dust_uranium')
        .add('immersiveengineering:dust_constantan')
        .add('immersiveengineering:dust_electrum')
        .add('immersiveengineering:dust_coke')
        .add('immersiveengineering:dust_hop_graphite')
        .add('immersiveengineering:dust_saltpeter');

    event
        .get('appliedenergistics2:dusts/quartz')
        .add('emendatusenigmatica:dust_certus_quartz')
        .add('emendatusenigmatica:dust_quartz');

    event.get('forge:dusts/lapis').add('mekanism:dust_lapis_lazuli');
    event.get('appliedenergistics2:dusts/certus_quartz').add('emendatusenigmatica:dust_certus_quartz');
    event.get('appliedenergistics2:dusts/nether_quartz').add('emendatusenigmatica:dust_quartz');
    event.get('forge:dusts/ender').add('appliedenergistics2:ender_dust');

    event.get('forge:dusts').remove('minecraft:prismarine_shard');
    event.get('forge:dusts/prismarine').remove('minecraft:prismarine_shard');
});
