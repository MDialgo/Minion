local tbl = {
	name = "Saint Mocianne's Arboretum",
	mesh = "[Dungeon] Saint Mocianne's Arboretum",
	dutyid = 511,
	level = 60,
	expansion = 3,
	creator = "ganjueziji",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -2.822998046875, y = 3, z = -78.538208007813}},
		[2] = {objective = 2, pos = {x = -2.822998046875, y = 3, z = -78.538208007813}},
		[3] = {objective = 3, pos = {x = -274.31811523438, y = -46.000003814697, z = -125.15670013428}},
		[4] = {objective = 4, pos = {x = -274.31811523438, y = -46.000003814697, z = -125.15670013428}},
		[5] = {objective = 5, pos = {x = 5.8767499923706, y = -349.96664428711, z = 3.9987239837646}},
		[6] = {objective = 6, pos = {x = 5.8767499923706, y = -349.96664428711, z = 3.9987239837646}},
	},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 520, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 516, priority = 2, type = "Loot 1"},
		[3] = {contentid = 517, priority = 3, type = "Loot 2"},
		[4] = {contentid = 521, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 518, priority = 5, type = "Loot 3"},
		[6] = {contentid = 519, priority = 6, type = "Loot 4"},
		[7] = {contentid = 522, priority = 7, type = "Boss 3 Loot"}, -- Minion
	},
	bossids = {
		4653, -- Rose Garden
		4656, -- Queen Hawk
		4658, -- Belladonna
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytargetdistance = 15,
	prioritytarget = {
		[1] = {contentid = 4646, priority = 1, type = "Honeycomb"},
		[2] = {contentid = 4657, priority = 1, type = "Knight Hawk"},
	},
	avoidentity = {
		[1] = {contentid = 4659, radius = 6}, -- Boss 3: Bloated Bulbs
	},
	incombatinteract = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl