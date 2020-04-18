#priority 898

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

public function disableItem(item as IItemStack) as void {
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);

    mods.jei.JEI.hideItem(item);
    mods.jei.JEI.addInfo(item, ["This item is disabled.", 
		"If you somehow obtained it, please report it on Enigmatica 5's issue tracker.", 
		"There's a link to it in the Main Menu."]);
    //<recipetype:crafting>.removeByName("mekanism:processing/tin/dust/from_dirty_dust");

    //recipes.removeByName("mekanism:processing/tin/dust/from_dirty_dust");

}