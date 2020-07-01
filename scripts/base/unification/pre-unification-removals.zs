#priority 950

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.BracketHandlers;

<recipetype:occultism:crushing>.removeRecipe(<item:occultism:iron_dust>);
<recipetype:occultism:crushing>.removeRecipe(<item:occultism:gold_dust>);
<recipetype:occultism:crushing>.removeRecipe(<item:occultism:silver_dust>);
<recipetype:occultism:crushing>.removeRecipe(<item:occultism:copper_dust>);
<recipetype:occultism:crushing>.removeRecipe(<item:occultism:obsidian_dust>);

<recipetype:mekanism:enriching>.removeByName("jaopca:mekanism.dust_to_material.prismarine");

<recipetype:mekanism:combining>.removeAll();
