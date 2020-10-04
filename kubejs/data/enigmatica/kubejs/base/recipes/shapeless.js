events.listen('recipes', function (event) {
    var recipes = [
        shapelessRecipe('botania:enchanted_soil', ['minecraft:grass_block', 'botania:overgrowth_seed']),
        shapelessRecipe('minecraft:sticky_piston', ['minecraft:piston', '#forge:slimeballs']),
        shapelessRecipe('minecraft:flint', ['#forge:gravel', '#forge:gravel', '#forge:gravel']),
        shapelessRecipe('simplefarming:cornbread', ['#forge:grain', '#forge:crops/corn', '#forge:grain']),
        shapelessRecipe('minecraft:chest', ['#forge:chests/wooden']),
        shapelessRecipe('minecraft:crafting_table', [
            'craftingstation:crafting_station_slab',
            'craftingstation:crafting_station_slab'
        ]),
        shapelessRecipe('simplefarming:fish_sandwich', [
            '#forge:bread',
            'aquaculture:fish_fillet_cooked',
            'aquaculture:fish_fillet_cooked',
            '#forge:crops/tomato',
            '#forge:salad_ingredients'
        ]),
        shapelessRecipe('simplefarming:sushi', [
            '#forge:grain',
            'minecraft:dried_kelp',
            'aquaculture:fish_fillet_raw',
            'aquaculture:fish_fillet_raw'
        ]),

        shapelessRecipe('simplefarming:fish_fillet', [
            '#forge:grain',
            '#forge:grain',
            'aquaculture:fish_fillet_cooked',
            'aquaculture:fish_fillet_cooked'
        ]),
        shapelessRecipe('tetra:magmatic_cell', [
            { item: 'tetra:magmatic_cell', nbt: { Damage: 128 } },
            'powah:capacitor_blazing',
            'powah:capacitor_blazing'
        ]),
        shapelessRecipe('minecraft:wheat_seeds', ['minecraft:wheat']),
        shapelessRecipe('quark:root', ['minecraft:vine', '#forge:dyes/brown']),
        shapelessRecipe(
            {
                item: 'akashictome:tome',
                nbt: {
                    'akashictome:is_morphing': 1,
                    'akashictome:data': {
                        modularrouters: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: { 'patchouli:book': 'modularrouters:book' }
                        },
                        powah: {
                            id: 'powah:book',
                            Count: 1,
                            tag: {
                                'akashictome:displayName': '{"translate":"item.powah.book"}',
                                'akashictome:is_morphing': 1,
                                display: {
                                    Name:
                                        '{"translate":"akashictome.sudo_name","with":[{"color":"green","translate":"item.powah.book"}]}'
                                }
                            }
                        },
                        rftoolsbase: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: { 'patchouli:book': 'rftoolsbase:manual' }
                        },
                        naturesaura: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: {
                                'akashictome:displayName': '{"translate":"item.naturesaura.book.name"}',
                                'patchouli:book': 'naturesaura:book',
                                'akashictome:is_morphing': 1,
                                display: {
                                    Name:
                                        '{"translate":"akashictome.sudo_name","with":[{"color":"green","translate":"item.naturesaura.book.name"}]}'
                                }
                            }
                        },
                        transport: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: { 'patchouli:book': 'transport:guide' }
                        },
                        engineersdecor: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: { 'patchouli:book': 'engineersdecor:engineersdecor_manual' }
                        },
                        psi: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: { 'patchouli:book': 'psi:encyclopaedia_psionica' }
                        },
                        pneumaticcraft: {
                            id: 'patchouli:guide_book',
                            Count: 1,
                            tag: { 'patchouli:book': 'pneumaticcraft:book' }
                        },
                        occultism: { id: 'occultism:dictionary_of_spirits', Count: 1 },
                        solcarrot: { id: 'solcarrot:food_book', Count: 1 },
                        immersiveengineering: { id: 'immersiveengineering:manual', Count: 1 },
                        integrateddynamics: { id: 'integrateddynamics:on_the_dynamics_of_integration', Count: 1 }
                    }
                }
            },
            ['minecraft:book', '#forge:bookshelves']
        ),
        shapelessRecipe(item.of('patchouli:guide_book', { 'patchouli:book': 'patchouli:modded_for_dummies' }), [
            'minecraft:book',
            '#forge:dyes/yellow'
        ]),
        shapelessRecipe('kubejs:compressed_cobblestone_1x', [
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone',
            '#forge:cobblestone'
        ]),
        shapelessRecipe(item.of('minecraft:cobblestone', 9), ['kubejs:compressed_cobblestone_1x']),
        shapelessRecipe(item.of('emendatusenigmatica:ingot_steel', 2), [
            'immersiveengineering:ingot_steel',
            'immersiveengineering:ingot_steel'
        ]),
        shapelessRecipe(item.of('immersiveengineering:ingot_steel', 2), [
            'mekanism:ingot_steel',
            'mekanism:ingot_steel'
        ]),
        shapelessRecipe(item.of('mekanism:ingot_steel', 2), [
            'emendatusenigmatica:ingot_steel',
            'emendatusenigmatica:ingot_steel'
        ]),
        shapelessRecipe(item.of('naturesaura:token_joy', 2), [
            { item: 'naturesaura:aura_bottle', nbt: { stored_type: 'naturesaura:overworld' } },
            'minecraft:torch',
            '#minecraft:small_flowers',
            'minecraft:oak_sapling',
            'minecraft:apple',
            'minecraft:iron_ingot',
            'naturesaura:gold_leaf',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:token_fear', 2), [
            { item: 'naturesaura:aura_bottle', nbt: { stored_type: 'naturesaura:nether' } },
            'minecraft:bone',
            'minecraft:rotten_flesh',
            'minecraft:oak_sapling',
            'minecraft:feather',
            'minecraft:soul_sand',
            'naturesaura:gold_leaf',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:token_anger', 2), [
            { item: 'naturesaura:aura_bottle', nbt: { stored_type: 'naturesaura:nether' } },
            'minecraft:gunpowder',
            'minecraft:magma_block',
            'minecraft:oak_sapling',
            'minecraft:blaze_powder',
            'minecraft:ender_pearl',
            'naturesaura:gold_leaf',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:token_sorrow', 2), [
            { item: 'naturesaura:aura_bottle', nbt: { stored_type: 'naturesaura:overworld' } },
            '#forge:glass',
            'minecraft:ghast_tear',
            'minecraft:oak_sapling',
            '#minecraft:meats',
            '#minecraft:fishes',
            'naturesaura:gold_leaf',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:eye', 1), [
            'minecraft:spider_eye',
            'naturesaura:gold_leaf',
            'naturesaura:gold_leaf',
            '#forge:ingots/gold',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:eye_improved', 1), [
            'naturesaura:eye',
            'naturesaura:gold_leaf',
            'naturesaura:gold_leaf',
            'naturesaura:sky_ingot',
            'naturesaura:sky_ingot',
            'naturesaura:end_flower',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:effect_powder', 24, {'effect':'naturesaura:nether_grass'}), [
            'naturesaura:gold_powder',
            'naturesaura:gold_powder',
            'minecraft:grass',
            'minecraft:netherrack',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:effect_powder', 32, {'effect':'naturesaura:cache_recharge'}), [
            'naturesaura:gold_powder',
            'naturesaura:gold_powder',
            'naturesaura:aura_cache',
            'naturesaura:sky_ingot',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:effect_powder', 8, {'effect':'naturesaura:animal'}), [
            'naturesaura:gold_powder',
            'naturesaura:gold_powder',
            'minecraft:egg',
            'naturesaura:sky_ingot',
            'minecraft:jungle_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:effect_powder', 24, {'effect':'naturesaura:plant_boost'}), [
            'naturesaura:gold_powder',
            'naturesaura:gold_powder',
            'minecraft:wheat',
            'naturesaura:sky_ingot',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:effect_powder', 4, {'effect':'naturesaura:ore_spawn'}), [
            'naturesaura:gold_powder',
            'naturesaura:gold_powder',
            '#forge:ores/redstone',
            '#forge:ores/diamond',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:ancient_sapling', 2), [
            'minecraft:wheat_seeds',
            'naturesaura:gold_leaf',
            'minecraft:dandelion',
            'minecraft:poppy',
            'minecraft:sugar_cane',
            'minecraft:oak_sapling',
            'minecraft:oak_sapling',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:conversion_catalyst'), [
            'naturesaura:gold_brick',
            'naturesaura:gold_leaf',
            'minecraft:brewing_stand',
            'naturesaura:sky_ingot',
            '#forge:storage_blocks/glowstone',
            'naturesaura:infused_stone',
            'minecraft:jungle_sapling',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:crushing_catalyst'), [
            'naturesaura:gold_brick',
            'naturesaura:token_anger',
            'minecraft:piston',
            'minecraft:flint',
            'naturesaura:infused_stone',
            'minecraft:oak_sapling',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:furnace_heater'), [
            'naturesaura:infused_stone',
            'naturesaura:infused_stone',
            'naturesaura:token_fear',
            'minecraft:flint',
            'minecraft:fire_charge',
            'minecraft:magma_block',
            'naturesaura:tainted_gold',
            'naturesaura:infused_iron',
            'minecraft:oak_sapling'
        ]),
        shapelessRecipe(item.of('naturesaura:nature_altar'), [
            'naturesaura:gold_leaf',
            'naturesaura:token_joy',
            'minecraft:stone',
            'minecraft:stone',
            'minecraft:stone',
            '#forge:ingots/gold',
            'minecraft:oak_sapling',
            'naturesaura:gold_powder'
        ]),
        shapelessRecipe(item.of('naturesaura:break_prevention'), [
            'naturesaura:token_fear',
            'naturesaura:tainted_gold',
            'naturesaura:sky_ingot',
            '#forge:gems/diamond',
            'minecraft:oak_sapling',
            'naturesaura:gold_powder'
        ])
    ];

    recipes.forEach(function (recipe) {
        event.shapeless(recipe.result, recipe.ingredients);
    });
});
