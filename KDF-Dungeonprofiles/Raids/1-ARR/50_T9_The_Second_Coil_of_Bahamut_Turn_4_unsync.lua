local tbl = {
	name = "T9 The Second Coil of Bahamut Turn 4",
	mesh = "[Raid] Bahamut T9",
	dutyid = 358,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		{objective = 1, pos = {x = 0.024888779968023, y = -5.5879354476929e-09, z = -11.085740089417}},
	},
	forcemeleerange = {2612},
	interactdistance = 100,
	interacts = {
		{contentid = 316, priority = 1, type = "Loot 1"},
		{contentid = 317, priority = 2, type = "Loot 1"},
		{contentid = 2003419, priority = 3, type = "Allagan Terminal"},
	},
	enemytargetdistance = 100,
	bossids = {2612},
	prioritytargetdistance = 10,
	prioritytarget = {
		{contentid = 2634, priority = 1, type = "Dalamud Spawn"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {
		{
			desc = "Meteor",
			detectwho = "me",
			id = 1,
			pos = {x = 0.45133513212204, y = -1.1920928955078e-07, z = 16.85538482666},
			timetoreturn = 10,
			type = "move",
		},
	},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl