local tbl = {
	name = "O3N Deltascape V3.0",
	mesh = "Deltascape V3.0",
	dutyid = 693,
	level = 70,
	expansion = 4,
	creator = "Koyote#6642 / Mist",
	notes = "",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0, z = -8} },
	},
	forcemeleerange = {},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 929, priority = 1, type = "Loot 1"},
		[2] = {contentid = 930, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 30,
	bossids = {5633},
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 5633, priority = 1, type = "Halicarnassus"},
	},
	advancedavoid = {
		[1] = {
			castingid = 9318, -- Ribbit
			type = "movebehind",
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl