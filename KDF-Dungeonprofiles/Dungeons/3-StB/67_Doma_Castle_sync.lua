local tbl = {
	name = "Doma Castle",
	mesh = "[Dungeon] Doma Castle",
	dutyid = 1144,
	level = 67,
	expansion = 4,
	creator = "Mist/Void Vessel",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		-- Arrive at the Third Armory
		[1] = {objective = 1, pos = {x = 122.06, y = 40.60, z = 16.71}},
		-- Defeat the magitek rearguard
		[2] = {objective = 2, pos = {x = 122.06, y = 40.60, z = 16.71}},
		-- Arrive at the Training Grounds
		[3] = {objective = 3, pos = {x = -240.48, y = 45.60, z = 130.39}},
		-- Defeat the magitek hexadrone
		[4] = {objective = 4, pos = {x = -240.48, y = 45.60, z = 130.39}},
		-- Arrive at the Hall of the Scarlet Swallow
		[5] = {objective = 5, pos = {x = -239.96, y = 67.20, z = -199.45}},
		-- Defeat Hypertuned Grynewaht
		[6] = {objective = 6, pos = {x = -239.96, y = 67.20, z = -199.45}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 913, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 909, priority = 2, type = "Loot 1"},
		[3] = {contentid = 910, priority = 3, type = "Loot 2"},
		[4] = {contentid = 914, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 911, priority = 5, type = "Loot 3"},
		[6] = {contentid = 912, priority = 6, type = "Loot 4"},
		[7] = {contentid = 915, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6200, -- Magitek Rearguard
		6203, -- Magitek Hexadrone
		6205, -- Hypertuned Grynewaht
	},
	prioritytarget = {},
	tankat = {
		[1] = {contentid = 6203, frompercent = 100, topercent = 0, pos = {x = -240.48, y = 45.60, z = 130.39}},
	},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "6203",
			type = "move",
			detectwho = "any",
			timetoreturn = 5,
			pos = {
				[1] = {x = -240.48, y = 45.60, z = 130.39 },
				[2] = {x = -240.48, y = 45.60, z = 130.39 },
				[3] = {x = -240.48, y = 45.60, z = 130.39 },
				[4] = {x = -240.48, y = 45.60, z = 130.39 },
			},
			returnpos = {
				[1] = {x = -240.48, y = 45.60, z = 130.39 },
				[2] = {x = -240.48, y = 45.60, z = 130.39 },
				[3] = {x = -240.48, y = 45.60, z = 130.39 },
				[4] = {x = -240.48, y = 45.60, z = 130.39 },
			},
		},
	},
}

return tbl