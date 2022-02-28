PrefabFiles = {
	"FT",
	"FT_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/FT.tex" ), --存档图片
    Asset( "ATLAS", "images/saveslot_portraits/FT.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/FT.tex" ), --单机选人界面
    Asset( "ATLAS", "images/selectscreen_portraits/FT.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/FT_silho.tex" ), --单机未解锁界面
    Asset( "ATLAS", "images/selectscreen_portraits/FT_silho.xml" ),

    Asset( "IMAGE", "bigportraits/FT.tex" ), --人物大图（方形的那个）
    Asset( "ATLAS", "bigportraits/FT.xml" ),
	
	Asset( "IMAGE", "images/map_icons/FT.tex" ), --小地图
	Asset( "ATLAS", "images/map_icons/FT.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_FT.tex" ), --tab键人物列表显示的头像
    Asset( "ATLAS", "images/avatars/avatar_FT.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_FT.tex" ),--tab键人物列表显示的头像（死亡）
    Asset( "ATLAS", "images/avatars/avatar_ghost_FT.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_FT.tex" ), --人物检查按钮的图片
    Asset( "ATLAS", "images/avatars/self_inspect_FT.xml" ),
	
	Asset( "IMAGE", "images/names_FT.tex" ),  --人物名字
    Asset( "ATLAS", "images/names_FT.xml" ),
	
    Asset( "IMAGE", "bigportraits/FT_none.tex" ),  --人物大图（椭圆的那个）
    Asset( "ATLAS", "bigportraits/FT_none.xml" ),
	

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.FT = "焰尾骑士-索娜"
STRINGS.CHARACTER_NAMES.FT = "焰尾"
STRINGS.CHARACTER_DESCRIPTIONS.FT = "*红松骑士团团长\n*矿石病患者\n*尾巴像流星一样--他们都是这样说的\n*喜欢可爱的东西"
STRINGS.CHARACTER_QUOTES.FT = "\"小灰不一起来吗.\""

-- Custom speech strings
STRINGS.CHARACTERS.FT = require "speech_FT"

-- The character's name as appears in-game 
STRINGS.NAMES.FT = "索娜"

AddMinimapAtlas("images/map_icons/FT.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("FT", "FEMALE")


