local tbl = {
	name = "The Fractal Continuum",
	mesh = "[Dungeon] Fractal Continuum",
	dutyid = 430,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 121.78, y = 2.69, z = 45.37}},
		[2] = {objective = 2, pos = {x = 121.78, y = 2.69, z = 45.37}},
		[3] = {objective = 3, pos = {x = -155.66, y = 0.01, z = 92.91}},
		[4] = {objective = 4, pos = {x = -155.66, y = 0.01, z = 92.91}},
		[5] = {objective = 5, pos = {x = -0.49, y = 53.14, z = -200.88}},
		[6] = {objective = 6, pos = {x = -0.49, y = 53.14, z = -200.88}},
		[7] = {objective = 7, pos = {x = -128.01, y = 53.14, z = -424.14}},
		[8] = {objective = 8, pos = {x = 128.01, y = 53.14, z = -424.14}},
		[9] = {objective = 9, pos = {x = -0.04, y = 46.6, z = -357.33}},
	},
	excludeshortcut = {
		[5] = true, --stop using shortcut if step is 5,6,7,8,9 else we are stuck in a loop
		[6] = true,
		[7] = true,
		[8] = true,
		[9] = true,
	},
	interactdistance = 60,
	interacts = {
		[1] = {contentid = 410, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 406, priority = 2, type = "Loot 1"},
		[3] = {contentid = 407, priority = 3, type = "Loot 2"},
		[4] = {contentid = 411, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 2005263, priority = 5, type = "Violet Switch"},
		[6] = {contentid = 408, priority = 6, type = "Loot 3"},
		[7] = {contentid = 2005264, priority = 7, type = "Crimson Switch"},
		[8] = {contentid = 409, priority = 8, type = "Loot 4"},
		[9] = {contentid = 2005262, priority = 9, type = "Emerald Switch"},
		[10] = {contentid = 412, priority = 10, type = "Boss 3 Loot"}, -- Owlet
	},
	bossids = {
		3428, -- Phantom Ray
		3429, -- Minotaur
		3434, -- The Curator -- Curator Card & Unbreakable Orchestrion Roll
	},
	forcemeleerange = {},
	enemytargetdistance = 40,
	prioritytargetdistance = 40,
	prioritytarget = {},
	ignoretarget = {},
	dontclearfriendlytargets = {2005242,2005243,2005244,2005261}, --to stop KDF from detargeting the teleporters as minion requires them touched to 
	avoidentity = {},
	advancedavoid = {},
	overheadmarkers = {},
	excludeavoid = {},
	largerpulls = {distance = 45},
}

return tbl