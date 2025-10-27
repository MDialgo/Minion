local tbl = {
	name = "A8S Burden of the Son (Savage)",
	mesh = "[Raid] The Burden of the Son",
	dutyid = 532,
	level = 60,
	expansion = 3,
	creator = "Koyote#6642",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y=0,z=100}},
	},
	forcemeleerange= {4707,4703,4705,4708.3777,3776},
	interacts = {
		[1] = {contentid = 741, priority = 1, type = "Loot 1"},
		[2] = {contentid = 742, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {
		[1] = {contentid = 4707, frompercent = 100, topercent = 1, pos = {x = 0.0, y = 10.50, z = -4}, desc = "tank at this pos from 100-1%"},
		[2] = {contentid = 7204, frompercent = 100, topercent = 1, pos = {x = 0.0, y = 10.50, z = -0}, desc = "tank at this pos from 100-1%"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl