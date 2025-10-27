local tbl = {
	name = "The Qitana Ravel",
	mesh = "[Dungeon] The Qitana Ravel",
	dutyid = 823,
	level = 75,
	expansion = 5,
	creator = "Koyote@6642",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.15697628259659, y = 5.3499994277954, z = 314.82046508789}},
		[2] = {objective = 2, pos = {x = 62, y = -21, z = -36.35001373291}},
		[3] = {objective = 3, pos = {x = 39.374504089355, y = -70.110023498535, z = -230.42651367188}},
		[4] = {objective = 4, pos = {x = 23.040821075439, y = -59.8337059021, z = -320.5178527832}},
		[5] = {objective = 5, pos = {x = 17.123949050903, y = -77, z = -550.79040527344}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 1167, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1163, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1164, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1168, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1165, priority = 5, type = "Loot 3"},
		[6] = {contentid = 1166, priority = 6, type = "Loot 4"},
		[7] = {contentid = 1169, priority = 7, type = "Boss 3 Loot"}, -- Chameleon, Unwound Orchestrion Roll & Fallen Tree
	},
	bossids = {
		8231, -- Lozatl
		8232, -- Batsquatch
		8233, -- Lightwarden: Eros -- Eros Card
	},
	forcemeleerange = {},
	enemytargetdistance = 60,
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 8225, priority = 1, type = "Echo of Qitana"},
		[2] = {contentid = 8224, priority = 2, type = "Forgiven Violence"},
		[3] = {contentid = 8219, priority = 3, type = "Forgiven Flattery"},
	},
	advancedavoid = {
		[1] = {castingid = 15520, creatordesc = "Heaving Breath", type = "trust"}, -- To Do
		[2] = {castingid = 15524, creatordesc = "Confession", type = "multifixed",
			pos = {
				[1] = {x = 16.984865188599, y = -77, z = -537.93841552734},
				[2] = {x = 16.984865188599, y = -77, z = -537.93841552734},
				[3] = {x = 16.984865188599, y = -77, z = -537.93841552734},
				[4] = {x = 16.984865188599, y = -77, z = -537.93841552734},
			},
		},
		[3] = {castingid = 15521, creatordesc = "Confession", type = "multifixed",
			pos = {
				[1] = {x = 16.984865188599, y = -77, z = -537.93841552734},
				[2] = {x = 16.984865188599, y = -77, z = -537.93841552734},
				[3] = {x = 16.984865188599, y = -77, z = -537.93841552734},
				[4] = {x = 16.984865188599, y = -77, z = -537.93841552734},
			},
		},
		[4] = {castingid = 15504, creatordesc = "Fury", type = "trust"}, -- To Do
		[5] = {castingid = 15503, creatordesc = "Fury", type = "trust"}, -- To Do
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl