#priority 898

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

public function removeProcessingFor(item as IItemStack) as void {

    // Minecraft
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);

    // TODO: Specify all the mekanism recipes that need to be removed?
    //<recipetype:mekanism:enriching>.removeByName("mekanism:processing/tin/dust/from_dirty_dust");
    
    // This new way of doing it will be added
    //recipes.removeByName("mekanism:processing/tin/dust/from_dirty_dust");

    // JEI
	//JEI.RemoveAndHide(item);

    // Silents Mechanisms

    // Industrial Foregoing

    // Create

    // Mekanism
}
			