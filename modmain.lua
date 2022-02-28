PrefabFiles = {
    "ft",
    "ft_none"
}

Assets = {
    Asset("IMAGE", "images/saveslot_portraits/ft.tex"), --存档图片
    Asset("ATLAS", "images/saveslot_portraits/ft.xml"),
    Asset("IMAGE", "images/selectscreen_portraits/ft.tex"), --单机选人界面
    Asset("ATLAS", "images/selectscreen_portraits/ft.xml"),
    Asset("IMAGE", "images/selectscreen_portraits/ft_silho.tex"), --单机未解锁界面
    Asset("ATLAS", "images/selectscreen_portraits/ft_silho.xml"),
    Asset("IMAGE", "bigportraits/ft.tex"), --人物大图（方形的那个）
    Asset("ATLAS", "bigportraits/ft.xml"),
    Asset("IMAGE", "images/map_icons/ft.tex"), --小地图
    Asset("ATLAS", "images/map_icons/ft.xml"),
    Asset("IMAGE", "images/avatars/avatar_ft.tex"), --tab键人物列表显示的头像
    Asset("ATLAS", "images/avatars/avatar_ft.xml"),
    Asset("IMAGE", "images/avatars/avatar_ghost_ft.tex"),
    --tab键人物列表显示的头像（死亡）
    Asset("ATLAS", "images/avatars/avatar_ghost_ft.xml"),
    Asset("IMAGE", "images/avatars/self_inspect_ft.tex"), --人物检查按钮的图片
    Asset("ATLAS", "images/avatars/self_inspect_ft.xml"),
    Asset("IMAGE", "images/names_ft.tex"), --人物名字
    Asset("ATLAS", "images/names_ft.xml"),
    Asset("IMAGE", "bigportraits/ft_none.tex"), --人物大图（椭圆的那个）
    Asset("ATLAS", "bigportraits/ft_none.xml")
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.ft = "焰尾骑士-索娜"
STRINGS.CHARACTER_NAMES.ft = "焰尾"
STRINGS.CHARACTER_DESCRIPTIONS.ft = "*红松骑士团团长\n*矿石病患者\n*尾巴像流星一样--他们都是这样说的\n*喜欢可爱的东西"
STRINGS.CHARACTER_QUOTES.ft = '"小灰不一起来吗."'

-- 选人界面生存几率
STRINGS.CHARACTER_SURVIVABILITY.ft = "生存几率？"

-- Custom speech strings
STRINGS.CHARACTERS.FT = require "speech_FT"

-- The character's name as appears in-game
STRINGS.NAMES.FT = "索娜"

-- 选人界面三维
TUNING.FT_HUNGER = 100
TUNING.FT_SANITY = 200
TUNING.FT_HEALTH = 110

AddMinimapAtlas("images/map_icons/ft.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("ft", "FEMALE")
