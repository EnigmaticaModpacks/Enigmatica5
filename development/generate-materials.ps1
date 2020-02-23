$Metals = @(
    "iron",
    "gold",
    "neptunium",
    "copper",
    "silver",
    "zinc",
    "brass",
    "tungsten",
    "lead",
    "quicksilver",
    "tin",
    "redstone_alloy",
    "refined_iron",
    "compressed_iron",
    "nickel",
    "platinum",
    "bismuth",
    "aluminum",
    "uranium",
    "bronze",
    "invar",
    "electrum",
    "bismuth_brass",
    "aluminum_steel",
    "bismuth_steel",
    "signalum",
    "lumium",
    "enderium",

    # Gems
    "diamond",
    "lapis_lazuli",
    "emerald",
    "quartz",
    "amethyst",
    "sapphire",
    "malachite",
    "ruby",

    # Dusts
    "redstone",
    "glowstone",
    "teslatite"
)

$Metals | ForEach-Object {
    @"
'$_': {
    'nugget': <tag:forge:nuggets/$_>,
    'ingot': <tag:forge:ingots/$_>,
    'gem': <tag:forge:gems/$_>,
    'storage_block': <tag:forge:storage_blocks/$_>,
    'ore': <tag:forge:ores/$_>,
    'ore_deposit': <tag:forge:ore_deposit/$_>,
    'dust': <tag:forge:dusts/$_>,
    //'fluid': <fluid:forge:fluids/$_>,
    'gear': <tag:forge:gears/$_>,
    'plate': <tag:forge:plates/$_>,
    'rod': <tag:forge:rods/$_>,
    'sheet': <tag:forge:sheets/$_>,
    'dirty_dust': <tag:forge:dirty_dusts/$_>,
    'clump': <tag:forge:clumps/$_>,
    'shard': <tag:forge:shards/$_>,
    'crystal': <tag:forge:crystals/$_>,
    //'slurry': <tag:forge:slurries/$_>,
    //'clean_slurry': <tag:forge:clean_slurries/$_>
},
"@
    Write-Host $OutputArray
}