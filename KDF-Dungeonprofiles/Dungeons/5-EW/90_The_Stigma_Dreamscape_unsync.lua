local tbl = {
	name = "The Stigma Dreamscape",
	mesh = "[Dungeon] The Stigma Dreamscape",
	dutyid = 986,
	level = 90,
	expansion = 6,
	creator = "Dialgo",
	notes = "Max Level Tank only for now",
	queuetype = 2,
	FFA = true,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -144.09, y = 684.00, z = -151.52}},
		[2] = {objective = 2, pos = {x = -144.09, y = 684.00, z = -151.52}},
		[3] = {objective = 3, pos = {x = -0.46, y = -712.00, z = -16.98}},
		[4] = {objective = 4, pos = {x = -0.46, y = -712.00, z = -16.98}},
		[5] = {objective = 5, pos = {x = 0, y = -4, z = -8}},
		[6] = {objective = 6, pos = {x = 0, y = -4, z = -8}},
	},
	interacts = {
		[1] = {contentid = 1375, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 2011703, priority = 2, type = "Teleportation Construct"},
		[3] = {contentid = 1371, priority = 3, type = "Loot 1"},
		[4] = {contentid = 1372, priority = 4, type = "Loot 2"},
		[5] = {contentid = 1376, priority = 5, type = "Boss 2 Loot"},
		[6] = {contentid = 2011704, priority = 6, type = "Teleportation Construct"},
		[7] = {contentid = 1373, priority = 7, type = "Loot 3"},
		[8] = {contentid = 1374, priority = 8, type = "Loot 4"},
		[9] = {contentid = 1377, priority = 9, type = "Boss 3 Loot"}, -- Optimus Omicron
	},
	bossids = {
		10401, -- Proto-Omega
		10403, -- Arch-Lambda
		10404, -- Stigma-4
	},
	forcemeleerange = {},
	prioritytarget = {
		[1] = {contentid = 10406, priority = 1, type = "Omega Frame"},
		[2] = {contentid = 10407, priority = 1, type = "Hybrid Dragon"},
	},
	avoidentity = {},
	advancedavoid = {},
	avoidancetype = 1, -- 1 = New, 2 = Old
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl