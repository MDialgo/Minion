local tbl = {
	name = "The Keeper of the Lake",
	mesh = "[Dungeon] The Keeper of the Lake",
	dutyid = 1063,
	level = 50,
	expansion = 2,
	creator = "Rinn#4747",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 13.760000228882, y = 26.590000152588, z = -14.39999961853}},
		[2] = {objective = 2, pos = {x = -35.080001831055, y = 338.45001220703, z = -199.94000244141}},
		[3] = {objective = 3, pos = {x = 8.7700004577637, y = 346.01998901367, z = -146.30999755859}},
		[4] = {objective = 4, pos = {x = -40.900001525879, y = 641.04998779297, z = -87.76000213623}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 413, priority = 1, type = "Loot 1"},
		[2] = {contentid = 417, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 2004844, priority = 3, type = "Imperial Identification Key"},
		[4] = {contentid = 2004829, priority = 4, type = "Magitek Terminal"},
		[5] = {contentid = 414, priority = 5, type = "Loot 2"},
		[6] = {contentid = 415, priority = 6, type = "Loot 3"},
		[7] = {contentid = 2004975, priority = 7, type = "Imperial Identification Key"},
		[8] = {contentid = 2004834, priority = 8, type = "Magitek Terminal"},
		[9] = {contentid = 418, priority = 9, type = "Boss 2 Loot 1"},
		[10] = {contentid = 419, priority = 10, type = "Boss 2 Loot 2"},
		[11] = {contentid = 416, priority = 11, type = "Loot 4"},
		[12] = {contentid = 420, priority = 12, type = "Boss 3 Loot"}, -- Silver Tears Orchestrion Roll
	},
	bossids = {
		3369, -- Einhander
		3373, -- Magitek Gunship
		3374, -- Midgardsormr
	},
	forcemeleerange = {12345,65421,47811},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3353,priority = 1, type = "Crab to unlock road"},
		[2] = {contentid = 3350,priority = 2, type = "Coblyn to unlock road"},
		[3] = {contentid = 3370,priority = 3, type = "Astranea"},
		[4] = {contentid = 3379,priority = 4, type = "Colossus Arena Unlock"},
		[5] = {contentid = 3365,priority = 5, type = "to unlock road"},
		[6] = {contentid = 3368,priority = 6, type = "to unlock road"},
		[7] = {contentid = 3375,priority = 7, type = "Midgarsormir Adds"},
		[8] = {contentid = 3374,priority = 8, type = "Midgarsormir"},
		[9] = {contentid = 3358,priority = 9, type = "Colossus"},
	},
	ignoretarget = {3371},
	avoidentity = {},
	advancedavoid = {
		[1] = {
			castingid = 29272,
			type = "trust",
		},
	},
	overheadmarkers = {
		[1] = {
			contentid = "3374",
			desc = "lastboss stacking",
			detectwho = "any",
			id = 305,
			movetoentity = true,
			timetoreturn = 5,
			type = "move",
		},
	},
	excludeavoid = {29283},
	enemylos = true,
	snapshots = {
		[1] = {
			castid = 3411,
			duration = 5,
			maxpoints = 5,
			note = "gunnership",
			radius = 9,
		},
	},
}



return tbl