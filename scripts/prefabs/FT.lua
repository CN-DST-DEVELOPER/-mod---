local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
	Asset("SCRIPT", "scripts/prefabs/player_common.lua")
}
local prefabs = {}

-- Custom starting items
local start_inv = {}

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when reviving from ghost (optional)
	inst.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * 1.33)
	inst.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * 1.33)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "FT_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
	-- if inst:HasTag("playerghost") then
	--     onbecameghost(inst)
	-- else
	--     onbecamehuman(inst)
	-- end
	-- 这几行没有必要，参看prefabs\player_common.lua:993
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst)
	-- Minimap icon
	inst.MiniMapEntity:SetIcon("FT.tex")
	inst:RemoveTag("scarytoprey")
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- choose which sounds this character will play
	inst.soundsname = "willow"

	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
	--inst.talker_path_override = "dontstarve_DLC001/characters/"

	-- Stats
	inst.components.health:SetMaxHealth(110)
	inst.components.hunger:SetMax(100)
	inst.components.sanity:SetMax(200)

	inst.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * 1.33)
	inst.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * 1.33)

	-- Damage multiplier (optional)
	inst.components.combat.damagemultiplier = 0.9

	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 0.66 * TUNING.WILSON_HUNGER_RATE

	-- Sanity Aura
	inst:AddComponent("sanityaura")
	inst.components.sanityaura.aura = TUNING.SANITYAURA_MED

	-- resistance
	inst.components.temperature.inherentinsulation = 100

	inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
	inst:ListenForEvent("ms_becameghost", onbecameghost)

	inst.OnLoad = onload
	inst.OnNewSpawn = onload
end

return MakePlayerCharacter("ft", prefabs, assets, common_postinit, master_postinit, start_inv)

-- 不支持大写prefab名，参见mainfunctions.lua:291
