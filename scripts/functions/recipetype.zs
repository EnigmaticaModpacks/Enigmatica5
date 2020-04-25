#priority 1001

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;


function botania_manaInfusion(name as string, output as IItemStack, input as IItemStack, mana as int) as void
{
    <recipetype:botania:mana_infusion>.addJSONRecipe(name,
    {
        input: input as IData,
        output: output as IData,
        mana: mana
    });
}