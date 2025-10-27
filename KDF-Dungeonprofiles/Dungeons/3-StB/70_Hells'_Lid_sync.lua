local tbl = {
	name = "Hells' Lid",
	mesh = "[KDF] - Hells' Lid",
	dutyid = 742,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -71, y = -3, z = 129}},
		[2] = {objective = 2, pos = {x = -71, y = -3, z = 129}},
		[3] = {objective = 3, pos = {x = 58, y = -26, z = -121}},
		[4] = {objective = 4, pos = {x = 58, y = -26, z = -121}},
		[5] = {objective = 5, pos = {x = 62, y = -88, z = -475}},
		[6] = {objective = 6, pos = {x = 62, y = -88, z = -475}},
	},
	interacts = {
		[1] = {contentid = 995, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 991, priority = 2, type = "Loot 1"},
		[3] = {contentid = 992, priority = 3, type = "Loot 2"},
		[4] = {contentid = 996, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 993, priority = 5, type = "Loot 3"},
		[6] = {contentid = 994, priority = 6, type = "Loot 4"},
		[7] = {contentid = 997, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6994, -- Otake-maru
		6995, -- Kamaitachi
		6996, -- Genbu
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 6997, priority = 1, type = "Third Boss Gate"},
	},
	avoidentity = {
		[1] = {contentid = 7182, radius = 5},
		[2] = {contentid = 7181, radius = 5},
		[3] = {contentid = 7181, type = "rectangle"},
	},
	tankat = {},
	advancedavoid = {
		[1] = {castingid = 10192, desc = "genbu cone", type = "movefrontleftofenemy"},
		[2] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.HellsLidCustom()"},
	},
	hasbuff = {},
	overheadmarkers = {},
	puddledata = {
		[1] = {
			castid = 10176,
			desc = "Puddle left first boss - liquid carapace",
			duration = 60,
			radius = 8,
		},
	},
}

return tbl