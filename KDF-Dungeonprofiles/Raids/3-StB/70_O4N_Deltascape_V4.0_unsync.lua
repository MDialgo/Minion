local tbl = {
	name = "O4N Deltascape V4.0",
	mesh = "Deltascape V4.0",
	dutyid = 694,
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "Needs a Healer to remove Doom\nOr\nBe a Max level Healer",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0, z = -12} },
	},
	forcemeleerange = {},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 931, priority = 1, type = "Loot 1"},
		[2] = {contentid = 932, priority = 2, type = "Loot 2"},
		[3] = {contentid = 966, priority = 3, type = "Loot 3"},
	},
	enemytargetdistance = 30,
	bossids = {6052},
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 6052, priority = 1, type = "Exdeath"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl