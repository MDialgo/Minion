local tbl = {
	name = "O8N Sigmascape V4.0",
	mesh = "Sigmascape V4.0",
	dutyid = 751, -- ID de la map
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=0,y=0,z=0}},
	},
	forcemeleerange= {7131}, -- ID monster
	interacts = {
		[1] = {contentid = 1007, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1006, priority = 2, type = "Loot 2"},
		[3] = {contentid = 1023, priority = 3, type = "Loot 3"},
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {
		[1] = {contentid = 7131, frompercent = 100, topercent = 1, pos = {x = -0.25, y = 0, z = 0.21}, desc = "Tank at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl