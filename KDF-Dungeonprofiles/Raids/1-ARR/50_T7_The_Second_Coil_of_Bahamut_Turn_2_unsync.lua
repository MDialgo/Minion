local tbl = {
	name = "T7 The Second Coil of Bahamut Turn 2",
	mesh = "[Raid] Bahamut T7",
	dutyid = 356,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		{objective = 1, pos = {x = -420.88000488281, y = -270.63000488281, z = -1.2400000095367}},
		{objective = 2, pos = {x = -449.95001220703, y = 800, z = 86.709999084473}},
	},
	forcemeleerange = {},
	interactdistance = 100,
	interacts = {
		{contentid = 2003415, priority = 1, type = "Inner Bulkhead"},
		{contentid = 313, priority = 2, type = "Loot 1"},
		{contentid = 312, priority = 3, type = "Loot 2"},
		{contentid = 2003417, priority = 4, type = "Exit"},
	},
	enemytargetdistance = 100,
	bossids = {2610},
	prioritytargetdistance = 10,
	prioritytarget = {
		{contentid = 2624, priority = 1, type = "Lamia Deathdancer"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl