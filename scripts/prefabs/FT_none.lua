local assets =
{
	Asset( "ANIM", "anim/FT.zip" ),
	Asset( "ANIM", "anim/ghost_FT_build.zip" ),
}

local skins =
{
	normal_skin = "FT",
	ghost_skin = "ghost_FT_build",
}

local base_prefab = "FT"

local tags = {"FT", "CHARACTER"}

return CreatePrefabSkin("FT_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})