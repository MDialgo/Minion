local tbl = {
	name = "O10N Alphascape V2.0",
	mesh = "Psiscape V2.0",
	dutyid = 799, -- ID de la map
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y= 0,z=100}},
	},
	forcemeleerange= {}, -- ID monster
	interacts = {
		[1] = {contentid = 1075, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1076, priority = 2, type = "Loot 2"},
		[3] = {contentid = 1097, priority = 3, type = "Loot 3"},
	},
	dontclearfriendlytargets = {},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {
		[1] = {contentid = 7641, frompercent = 100, topercent = 1, pos = {x = 101.5, y = 0, z = 87.5}, desc = "Tank Omega at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	limitbreak = {},
	tankbuster = {},
	tethers = {},
	puddledata= {},
}

return tbl