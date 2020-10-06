param(
	[PSObject]
	$CLIENT_MODS = @(
		"AmbientSounds",
		"AppleSkin", 
		"BetterAdvancements",
		"ClientTweaks",
		"CraftingTweaks", 
		"DefaultOptions", 
		"DefaultSettings",
		"Ding",
		"EnchantmentDescriptions", 
		"EquipmentTooltips", 
		"FpsReducer", 
		"invtweaks",
		"JustEnoughResources",
		"LLOverlayReloaded", 
		"MouseTweaks",
		"nmdar_", 
		"Neat", 
		"overloadedarmorbar", 
		"ReAuth",
		"StepUp",
		"ToastControl", 
		"toughnessbar", 
		"Xaeros_Minimap", 
		"XaerosWorldMap",
		"moreoverlays")
)

$ModFolder = "$PSScriptRoot/mods"

Get-ChildItem $ModFolder -Name -Filter  "*.jar" | ForEach-Object {
	$Mod = $_.toLower()
	foreach ($ClientMod in $CLIENT_MODS) {
		if ($Mod.StartsWith($ClientMod.toLower())) {
			Remove-Item "$Modfolder/$Mod" -Force
		}
	}
}