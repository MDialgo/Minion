local tbl = {
	name = "The Tam-Tara Deepcroft",
	mesh = "[HM] - The Tam-Tara Deepcroft v2",
	dutyid = 1037,
	level = 16,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -52.680000305176, y = 14.039999961853, z = -12.539999961853}},
		[2] = {objective = 2, pos = {x = -176.10000610352, y = 13.060000419617, z = -5.4400000572205}},
		[3] = {objective = 3, pos = {x = -52.680000305176, y = 14.039999961853, z = -12.539999961853}},
		[4] = {objective = 4, pos = {x = -52.680000305176, y = 14.039999961853, z = -12.539999961853}},
	},
	interactdistance = 85,
	interacts = {
		[1] = {contentid = 16, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 2000061, priority = 2, req = {}, type = "Cultist Orb 1"},
		--[3] = {contentid = 15, priority = 3, type = "Loot 1"}, -- Too out of the way
		[4] = {contentid = 118, priority = 4, type = "Loot 2"},
		[5] = {contentid = 17, priority = 5, type = "Boss 2 Loot"},
		[6] = {contentid = 2000062, priority = 6, req = {}, type = "Cultist Orb 2"},
		--[7] = {contentid = 119, priority = 7, type = "Loot 3"}, -- Too out of the way
		[8] = {contentid = 2000057, priority = 8, req = {}, type = "Cultist Rosary"},
		[9] = {contentid = 2000060, priority = 9, req = {complete = true, objective = 2}, type = "Sealed Barrier"},
		[10] = {contentid = 62, priority = 10, type = "Boss 3 Loot"},
		[11] = {contentid = 2000067, priority = 11, req = {complete = true, objective = 3}, type = "Cultist Orb 3"},
		[12] = {contentid = 2000063, priority = 12, req = {complete = true, objective = 3}, type = "Cultist Orb 4"},
		[13] = {contentid = 11, priority = 13, type = "Boss 4 Loot"}, -- Faded Copy of Dark Vows
	},
	bossids = {
		455, -- Void Soulcounter x3
		73, -- Galvanth the Dominator
	},
	forcemeleerange = {73},
	enemytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 456, priority = 1, type = "Imps"},
	},
	advancedavoid = {},
	overheadmarkers = {},
}

return tbl