//priority: 975
events.listen('recipes', function (event) {
    materialsToUnify.forEach(function (material) {
        enigmatica_ore_deposit_processing(event, material);
    });
});

function enigmatica_ore_deposit_processing(event, material) {
    var oreDepositTag = ingredient.of('#forge:ore_deposits/' + material);
    var oreDeposit = oreDepositTag.first.id;

    var nuggetTag = ingredient.of('#forge:nuggets/' + material);

    var dustTag = ingredient.of('#forge:dusts/' + material);
    var dust = getPreferredItemInTag(dustTag).id;

    if (oreDeposit === air || dust === air) {
        return;
    }

    if (nuggetTag.first.id === air) {
        event.recipes.minecraft.smelting(dustTag, oreDepositTag).xp(1.0);
        event.recipes.minecraft.blasting(dustTag, oreDepositTag).xp(1.0);
    } else {
        event.recipes.minecraft.smelting(nuggetTag, oreDepositTag).xp(1.0);
        event.recipes.minecraft.blasting(nuggetTag, oreDepositTag).xp(1.0);
    }

    event.recipes.mekanism.enriching({
        input: {
            ingredient: { tag: 'forge:ore_deposits/' + material }
        },
        output: { item: dust, count: 1 }
    });

    event.recipes.create.crushing({
        ingredients: [
            {
                tag: 'forge:ore_deposits/' + material,
                count: 1
            }
        ],
        results: [
            {
                item: dust,
                count: 1
            },
            {
                item: dust,
                chance: 0.1,
                count: 1
            },
            {
                item: 'minecraft:dirt',
                chance: 0.5,
                count: 1
            }
        ],
        processingTime: 500
    });

    event.recipes.immersiveengineering.crusher({
        secondaries: [],
        result: {
            tag: 'forge:dusts/' + material
        },
        input: {
            tag: 'forge:ore_deposits/' + material
        },
        energy: 2000
    });

    event.recipes.occultism.crushing({
        ingredient: {
            tag: 'forge:ore_deposits/' + material
        },

        result: {
            item: dust,
            count: 1
        },
        crushing_time: 200
    });
}

function occultism_ore_ingot_crushing(event, material) {
    var blacklistedMaterials = ['redstone', 'lapis', 'emerald', 'diamond', 'quartz', 'coal'];
    if (blacklistedMaterials.includes(material)) {
        return;
    }

    var oreDepositTag = ingredient.of('#forge:ore_deposits/' + material);
    var oreDeposit = getPreferredItemInTag(oreDepositTag).id;

    var dustTag = ingredient.of('#forge:dusts/' + material);
    var dust = getPreferredItemInTag(dustTag).id;

    var ingotTag = ingredient.of('#forge:ingots/' + material);
    var ingot = getPreferredItemInTag(ingotTag).id;

    if (oreDeposit === air || dust === air) {
        return;
    }

    event.recipes.occultism.crushing({
        ingredient: {
            tag: 'forge:ores/' + material
        },

        result: {
            item: dust,
            count: 2
        },
        crushing_time: 200
    });

    if (ingot === air) {
        return;
    }

    event.recipes.occultism.crushing({
        ingredient: {
            tag: 'forge:ingots/' + material
        },

        result: {
            item: dust,
            count: 1
        },
        crushing_time: 200
    });
}
