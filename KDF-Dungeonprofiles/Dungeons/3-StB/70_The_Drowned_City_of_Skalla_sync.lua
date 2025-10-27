local tbl = {
	name = "The Drowned City of Skalla",
	mesh = "Hikari - The Drowned City of Skalla",
	dutyid = 1172,
	level = 70,
	expansion = 4,
	creator = "Hikari",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -217.66, y = -1.90, z = 4.07}},
		[2] = {objective = 2, pos = {x = -217.66, y = -1.90, z = 4.07}},
		[3] = {objective = 3, pos = {x = 111.00, y = 9.00, z = 3.81}},
		[4] = {objective = 4, pos = {x = 111.00, y = 9.00, z = 3.81}},
		[5] = {objective = 5, pos = {x = 475.79, y = -13.93, z = 3.93}},
		[6] = {objective = 6, pos = {x = 475.79, y = -13.93, z = 3.93}},
	},
	interacts = {
		[1] = {contentid = 973, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 969, priority = 2, type = "Loot 1"},
		[3] = {contentid = 970, priority = 3, type = "Loot 2"},
		[4] = {contentid = 974, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 971, priority = 5, type = "Loot 3"},
		[6] = {contentid = 972, priority = 6, type = "Loot 4"},
		[7] = {contentid = 975, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6907, -- Kelpie
		6908, -- The Old One
		6910, -- Hrodric Poisontongue
	},
	prioritytarget = {
		[1] = {contentid = 6909, priority = 1, type = "Second Boss Adds"}, --Doesn't work on melee
	},
	tankat = {},
	useaction = {
		[1] = {actiontree = 1, actionid = 9823, target = "me", contentid = 6909, desc = "shatterstone"},
	},
	advancedavoid = {
		[1] = {castingid = 9809, type = "setdistance", dist = 27, desc = "Hydro Pull"},
		[2] = {castingid = 9829, type = "faceaway"},
		[3] = {castingid = 9828, type = "setdistance", dist = 15, desc = "The Spin"},
	},
	overheadmarkers = {},
}

return tbl