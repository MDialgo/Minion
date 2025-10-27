local tbl = {
	name = "T1 The Binding Coil of Bahamut Turn 1",
	mesh = "[Raid] Bahamut T1",
	dutyid = 241,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -2.58, y = -11.88, z = 6.95}},
		[2] = {objective = 2, pos = {x = 47.04, y = 0.99, z = -336.04}},
		[3] = {objective = 3, pos = {x = -34.39, y = 0.27, z = -404.89}},
	},
	forcemeleerange= {},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 217, priority = 1, type = "Loot 1"},
		[2] = {contentid = 218, priority = 2, type = "Loot 2"},
		[3] = {contentid = 2001154, priority = 3, type = "Exit"},
	},
	enemytargetdistance = 20,
	prioritytarget = {},
	tankat= {
		[1] = {contentid = 1466, frompercent = 100, topercent = 1, pos = {x = -15.43, y = -0.30, z = -403.60}, desc = "Tank at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl