local tbl = {
	name = "O5N Sigmascape V1.0",
	mesh = "Sigmascape V1.0",
	dutyid = 748,
	level = 70,
	expansion = 4,
	creator = "Koyote#6642\nMeshes added by Dialgo",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		{objective = 1, pos = {x = 0, y = 0, z = 0}},
	},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 1019, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1020, priority = 2, type = "Loot 2"},
	},
	bossids = {7127},
	forcemeleerange = {7127},
	enemytargetdistance = 150,
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 7127, priority = 1, type = "Train"},
	},
	tankat= {
		[1] = {contentid = 7127, frompercent = 100, topercent = 1, pos = {x = 9.49,y = 0.02,z = -15.49}, desc = "Tank at this pos from 100-1%"},
	},
	incombatinteract = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl