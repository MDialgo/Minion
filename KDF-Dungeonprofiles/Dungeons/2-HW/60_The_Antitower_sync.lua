local tbl = {
	name = "The Antitower",
	mesh = "[KDF] - The Antitower",
	dutyid = 1111,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = true,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 221.56, y = -9.46, z = -181.61}},
		[2] = {objective = 2, pos = {x = 221.56, y = -9.46, z = -181.61}},
		[3] = {objective = 3, pos = {x = 221.56, y = -9.46, z = -181.61}},
	},
	interacts = {
		[1] = {contentid = 724, priority = 2, type = "Boss 1 Loot"},
		[2] = {contentid = 720, priority = 2, type = "Loot 1"},
		[3] = {contentid = 721, priority = 1, type = "Loot 2"},
		[4] = {contentid = 725, priority = 1, type = "Boss 2 Loot"},
		[5] = {contentid = 722, priority = 2, type = "Loot 3"},
		[6] = {contentid = 723, priority = 3, type = "Loot 4"},
		[7] = {contentid = 726, priority = 4, type = "Boss 3 Loot"}, -- 2x Minion & Orchestrion
	},
	bossids = {
		4805, -- Zuro Roggo
		4808, -- Ziggy
		4813, -- Calcabrina
	},
	prioritytarget = {
		[1] = {contentid = 4806, priority = 1, type = "first boss frog adds"},
		[2] = {contentid = 4810, priority = 2, type = "second boss meteors"},
		[3] = {contentid = 4811, priority = 1, type = "last boss adds Calca"},
		[4] = {contentid = 4812, priority = 2, type = "last boss adds Brina"},
	},
	advancedavoid = {
		[1] = {castingid = 5557, type = "moveinfront"},
		[2] = {castingid = 5559, type = "faceaway"},
	},
	hasbuff = {},
	overheadmarkers = {},
}

return tbl