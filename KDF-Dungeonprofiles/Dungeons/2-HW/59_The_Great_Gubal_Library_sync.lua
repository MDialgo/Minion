local tbl = {
	name = "The Great Gubal Library",
	mesh = "",
	dutyid = 1109,
	level = 59,
	expansion = 3,
	creator = "Mist#4283",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.49, y = 0.20, z = 0.01 }}, -- Defeat the demon tome
		[2] = {objective = 2, pos = {x = 177.84, y = -7.80, z = 27.18 }}, -- Defeat Byblos
		[3] = {objective = 3, pos = {x = 377.76, y = -38.80, z = -59.76 }}, -- Defeat the Everliving Bilbliotaph
	},
	interacts = {
		[1] = {contentid = 444, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 440, priority = 2, type = "Loot 1"},
		[3] = {contentid = 441, priority = 3, type = "Loot 2"},
		[4] = {contentid = 445, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 442, priority = 5, type = "Loot 3"},
		[6] = {contentid = 443, priority = 6, type = "Loot 4"},
		[7] = {contentid = 446, priority = 7, type = "Boss 3 Loot"}, -- Minion
	},
	bossids = {
		3923, -- Demon Tome
		3925, -- Byblos
		3930, -- The Everliving Bibliotaph
	},
	forcemeleerange = { 3925 },
	prioritytarget = {
		[1] = {contentid = 3923, priority = 1, type = "Demon Tome"},
		[2] = {contentid = 3915, priority = 2, type = "Page 64"},
	},
	tankat= {
		[1] = {contentid = 3925, frompercent = 100, topercent = 0, pos = {x = 177.84, y = -7.80, z = 27.18 }},
	},
	advancedavoid = {
		[1] = {castingid = 3518, type = "multifixed", -- Demon Tome: Disclosure
			pos = {
				[1] = {x = 4.00, y = 0.00, z = 9.00},
				[2] = {x = 4.00, y = 0.00, z = 9.00},
				[3] = {x = 4.00, y = 0.00, z = 9.00},
				[4] = {x = 4.00, y = 0.00, z = 9.00}
			}
		},
		[2] = {castingid = 3518, type = "movebehind"}, -- Demon Tome: Disclosure
	},
}

return tbl