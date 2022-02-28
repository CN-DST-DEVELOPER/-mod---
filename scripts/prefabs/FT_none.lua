local assets = {
	Asset("ANIM", "anim/FT.zip"),
	Asset("ANIM", "anim/ghost_FT_build.zip")
}

local skins = {
	normal_skin = "ft",
	ghost_skin = "ghost_FT_build"
}

local base_prefab = "ft"

local tags = {"FT", "CHARACTER"}

return CreatePrefabSkin(
	"ft_none",
	{
		base_prefab = base_prefab,
		skins = skins,
		assets = assets,
		tags = tags,
		skip_item_gen = true,
		skip_giftable_gen = true
	}
)
