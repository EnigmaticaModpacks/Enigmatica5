#priority 199
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var itemsToRemoveRecipesFrom as IItemStack[] = [
	<item:mekanism:combiner>,
	<item:mekanism:basic_combining_factory>,
	<item:mekanism:advanced_combining_factory>,
	<item:mekanism:elite_combining_factory>,
	<item:mekanism:ultimate_combining_factory>,
	<item:akashictome:tome>
];

for item in itemsToRemoveRecipesFrom {
	removeRecipe(item);
}