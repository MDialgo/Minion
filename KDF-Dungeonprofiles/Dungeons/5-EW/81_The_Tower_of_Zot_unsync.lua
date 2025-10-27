local tbl = {
	name = "The Tower of Zot",
	mesh = "",
	dutyid = 952,
	level = 81,
	expansion = 6,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 64, y = -442, z = -133}},
		[2] = {objective = 2, pos = {x = 64, y = -442, z = -133}},
		[3] = {objective = 3, pos = {x = -256, y = -169, z = -34}},
		[4] = {objective = 4, pos = {x = -256, y = -169, z = -34}},
		[5] = {objective = 5, pos = {x = -28, y = 546, z = -49}},
		[6] = {objective = 6, pos = {x = -28, y = 546, z = -49}},
	},
	interactdistance = 25,
	interacts = {
		[1] = {contentid = 1382, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1378, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1379, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1383, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1380, priority = 5, type = "Loot 3"},
		[6] = {contentid = 1381, priority = 6, type = "Loot 4"},
		[7] = {contentid = 1384, priority = 7, type = "Boss 3 Loot"}, -- Wind-up Magus Sisters & Tower of Zot Orchestrion Roll
	},
	bossids = {
		10256, -- Minduruva
		10257, -- Sanduruva
		10259, -- Cinduruva/The Magus Sisters -- Magus Sisters Card
	},
	forcemeleerange = {10257,10259,10256,10257},
	enemytargetdistance = 35,
	prioritytarget = {},
	avoidentity = {
		[1] = {contentid = 10258, desc = "orbs", radius = 15, timer = 5000},
	},
	tankat = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			contentid = "10259",
			desc = "lastboss stacking",
			detectwho = "me",
			id = 62,
			movetoentity = true,
			precise = false,
			timetoreturn = 8,
			type = "move",
		},
	},
	excludeavoid = {25253,25272},
	puddledata = {},
}

return tbl