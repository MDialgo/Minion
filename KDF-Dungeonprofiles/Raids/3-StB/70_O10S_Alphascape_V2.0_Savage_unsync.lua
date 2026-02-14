local tbl = {
	name = "O10S Alphascape V2.0 (Savage)",
	mesh = "Psiscape V2.0",
	dutyid = 803,
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y= 0,z=100}},
	},
	interacts = {
		[1] = {contentid = 1077, priority = 1, type = "Loot 1"}, -- Omega Head Gear Coffer (IL 400), Hand & Foot Coffers too
		[2] = {contentid = 1078, priority = 2, type = "Loot 2"}, -- Omega Head Gear Coffer (IL 400), Hand & Foot Coffers too
	},
	bossids = {
		7641, -- Midgardsormr -- Alphascape Datalog v2.0
	},
	forcemeleerange= {},
	enemytargetdistance = 50,
	prioritytarget = {},
	dontclearfriendlytargets = {},
	tankat= {
		[1] = {contentid = 7641, frompercent = 100, topercent = 1, pos = {x = 101.5, y = 0, z = 87.5}, desc = "Tank Omega at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	tethers = {},
	excludeavoid = {},
	tankbuster = {},
	limitbreak = {},
	puddledata= {},
}

return tbl