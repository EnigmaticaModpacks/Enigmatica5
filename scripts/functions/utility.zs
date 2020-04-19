#priority 1005

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;


public function disableItem(item as IItemStack) as void {
    // This doesn't actually work, no idea why. It works if I call it outside a function.
    // logger.info("Attempting to add JEI stuff to item " + item.registryName);
  	mods.jei.JEI.hideItem(item);
    mods.jei.JEI.addInfo(item, ["This item is disabled.", 
		"If you somehow obtained it, please report it on Enigmatica 5's issue tracker.", 
		"There's a link to it in the Main Menu."]);
      
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);
    
    //<recipetype:crafting>.removeByName("mekanism:processing/tin/dust/from_dirty_dust");

    //recipes.removeByName("mekanism:processing/tin/dust/from_dirty_dust");

}