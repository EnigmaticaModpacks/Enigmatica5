materialsToUnify.forEach(function (material) {
    // enigmatica_ore_deposit_processing(material);
    // occultism_ore_inot_crushing(material);
});

function enigmatica_ore_deposit_processing(material) {
    // Doesn't work, WTB documentation

    events.listen('recipes', function (event) {
        console.log('Starting enigmatica_ore_deposit_processing5 with ' + material);
        var ore_deposit_ingredient = ingredient.of('#forge:ore_deposits/' + material);
        var dust_ingredient = ingredient.of('#forge:dusts/' + material);
        var ore_deposit = ore_deposit_ingredient.getFirst();
        var dust = dust_ingredient.getFirst();
        var byproduct = 'minecraft:dirt';
        var byproductChance = 0.5;

        if (!ore_deposit) {
            console.log('Ore Deposit Ingredient with name #forge:ore_deposits/' + material + ' was null.');
            return;
        }

        if (!dust) {
            console.log('Dust Ingredient with name #forge:dusts/' + material + ' was null.');
            return;
        }

        var xp = 0.5;
        var processingTime = 100;

        event.recipes.minecraft.smelting({
            ingredient: {
                item: ore_deposit
            },
            result: dust,
            experience: xp,
            cookingtime: processingTime
        });
        event.recipes.minecraft.blasting({
            ingredient: {
                item: ore_deposit
            },
            result: dust,
            experience: xp,
            cookingtime: processingTime / 2
        });

        event.recipes.mekanism.enriching({
            input: {
                ingredient: {
                    item: ore_deposit
                }
            },
            output: {
                item: dust
            }
        });

        event.recipes.silents_mechanisms.crushing({
            process_time: 200,
            ingredient: {
                item: ore_deposit
            },
            results: [
                {
                    item: dust
                },
                {
                    item: byproduct,
                    chance: byproductChance
                }
            ]
        });
    });
}

function occultism_ore_inot_crushing(material) {
    events.listen('recipes', function (event) {});
}
