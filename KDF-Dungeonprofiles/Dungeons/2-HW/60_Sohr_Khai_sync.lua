local tbl={
	name = "Sohr Khai",
	mesh = "[Dungeon] Sohr Khai v2",
	dutyid = 1112,
	level = 60,
	expansion = 3,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -399.63, y = 8.77, z = -166.72}},
		[2] = {objective = 2, pos = {x = 399.83, y = 25.00, z = 93.48}},
		[3] = {objective = 3, pos = {x = 399.85, y = -55.00, z = -399.8}},
	},
	interactdistance = 25,
	interacts = {
		[1] = {contentid = 748, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 744, priority = 2, type = "Loot 1"},
		[3] = {contentid = 745, priority = 3, type = "Loot 2"},
		[4] = {contentid = 749, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 746, priority = 5, type = "Loot 3"},
		[6] = {contentid = 747, priority = 6, type = "Loot 4"},
		[7] = {contentid = 750, priority = 7, type = "Boss 3 Loot"}, -- Orchestrion
	},
	bossids = {
		4943, -- Chieftain Moglin
		4952, -- Poqhiraj
		4954, -- Hraesvelgr
	},
	forcemeleerange = {4928,4929,4930,4931,4932,4938,4939,4934,4935,4936,4937,4940,4941,4942},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 4944, priority = 1, type = "Chain"},
	},
	advancedavoid = {
		[1] = {
			castingid = 32129, -- Holy Orb
			type = "multifixed",
			pos = {
				[1] = {x = 399.85, y = -55.00, z = -399.8},
				[2] = {x = 399.85, y = -55.00, z = -399.8},
				[3] = {x = 399.85, y = -55.00, z = -399.8},
				[4] = {x = 399.85, y = -55.00, z = -399.8}
			},
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 305, -- Ahk Morn
			contentid = "4954",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = 399.85, y = -55.00, z = -399.8},
				[2] = {x = 399.85, y = -55.00, z = -399.8},
				[3] = {x = 399.85, y = -55.00, z = -399.8},
				[4] = {x = 399.85, y = -55.00, z = -399.8}
			},
			timetoreturn = 5
		},
	},
	excludeavoid = {
		32132, -- Akh Morn
	},
	puddledata = {},
}

return tbl