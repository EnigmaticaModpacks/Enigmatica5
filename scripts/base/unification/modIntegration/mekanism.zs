#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function mekanism_addOreToDustEnriching(material as string) as string {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ore = oreItemTag.first();
    var dust = dustItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        var message = "mekanism_addOreToDustEnriching: No items exist in the ItemTag " + oreItemTag.commandString;
        logger.info(message);
        return message;
    }

    if (dust.matches(<item:minecraft:air>)) {
        var message = "mekanism_addOreToDustEnriching: No items exist in the ItemTag " + dust.commandString;
        logger.info(message);
        return message;
    } 

    <recipetype:mekanism:enriching>.addJSONRecipe("enriching_" + formatRecipeName(dust * 2),
    {
        input: {
            ingredient: {
                item: ore.registryName
            }
            
        },
        output: {
            item: dust.registryName,
            amount: 2
        }
    });

    logger.info("mekanismAddOreToDustEnriching with " + material + " succesfully ran!");
    return "mekanismAddOreToDustEnriching with " + material + " succesfully ran!";
}