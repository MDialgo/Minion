local tbl = {
	name = "T6 The Second Coil of Bahamut Turn 1",
	mesh = "[Raid] Bahamut T6",
	dutyid = 355,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -276.97, y = 10.42, z = 34.83}},
		[2] = {objective = 2, pos = {x = -281.53918457031, y = 10.420999526978, z = 35.083206176758}},
	},
	forcemeleerange= {},
	interactdistance = 80,
	interacts = {
		[1] = {contentid = 310, priority = 1, type = "Loot 1"},
		[2] = {contentid = 311, priority = 2, type = "Loot 2"},
		[3] = {contentid = 2003416, priority = 3, type = "Exit"},
	},
	enemytargetdistance = 30,
	bossids = {2609},
	prioritytarget = {
		[1] = {contentid = 2742, priority = 1, desc = "Cluster"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	limitbreak = {},
	tethers = {},
	puddledata= {},
	finaldestination = {},
}

return tbl