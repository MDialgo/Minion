local tbl = {
	name = "T4 The Binding Coil of Bahamut Turn 4",
	mesh = "[Raid] Bahamut T4",
	dutyid = 244,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.20288324356079,	y = -0.050000607967377,	z = 0.37828716635704}},
		[2] = {objective = 2, pos = {x = 12.380487442017, y = 0.058137178421021, z = 11.170250892639}},
	},
	forcemeleerange= {},
	interactdistance = 80,
	interacts = {
		[1] = {contentid = 2000633, priority = 1, type = "Elevator Button"},
		[2] = {contentid = 222, priority = 2, type = "Loot 1"},
		[3] = {contentid = 221, priority = 3, type = "Loot 2"},
		[4] = {contentid = 2000634, priority = 4, type = "Exit"},
	},
	enemytargetdistance = 20,
	prioritytarget = {},
	tankat= {},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl