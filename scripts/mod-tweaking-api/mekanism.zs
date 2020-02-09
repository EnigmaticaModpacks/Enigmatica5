#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

public function mekanism_enriching_addRecipe(recipeName as string, output as IItemStack, input as IItemStack) as void {
    logger.info("SEARCHME Attempting to add Mekanism Enricher compat for " + oreItemTag.commandString);
    <recipetype:mekanism:enriching>.addJSONRecipe(recipeName,
    {
        input: {
            item: input.registryName
        },
        output: {
                item: output.registryName
        }
    });
}