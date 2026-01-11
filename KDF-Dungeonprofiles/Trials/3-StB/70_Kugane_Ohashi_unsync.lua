local tbl = {
	name = "Kugane Ohashi",
	mesh = "Kugane Ohashi",
	dutyid = 806, -- ID de la map
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100, y = 0, z = 100}},
	},
	interacts = {
		[1] = {contentid = 1115, priority = 1, type = "Loot"}, -- Yojimbo Barding
	},
	bossids = {
		7570, -- Yojimbo -- Stormblood Gilgamesh Card
	},
	forcemeleerange = {7570},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat = {
		[1] = {contentid = 7570, frompercent = 100, topercent = 1, pos = {x = 99.96, y = 0, z = 100.36}, desc = "Tank at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	limitbreak = {},
}

return tbl