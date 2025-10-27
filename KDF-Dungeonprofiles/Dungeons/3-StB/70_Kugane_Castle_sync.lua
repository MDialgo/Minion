local tbl = {
	name = "Kugane Castle",
	mesh = "[Dungeon] Kugane Castle",
	dutyid = 662,
	level = 70,
	expansion = 4,
	creator = "Mist",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -136.66, y = 0.15, z = 0.00}},
		[2] = {objective = 2, pos = {x = -136.66, y = 0.15, z = 0.00}},
		[3] = {objective = 3, pos = {x = 280.00, y = -90.85, z = 60.00}},
		[4] = {objective = 4, pos = {x = 280.00, y = -90.85, z = 60.00}},
		[5] = {objective = 5, pos = {x = 280.00, y = -75.86, z = 369.40}},
		[6] = {objective = 6, pos = {x = 280.00, y = -75.86, z = 369.40}},
	},
	interacts = {
		[1] = {contentid = 963, priority = 1, type = "Boss 1 Loot"}, -- Cracked Hanya Mask
		[2] = {contentid = 959, priority = 2, type = "Loot 1"},
		[3] = {contentid = 960, priority = 3, type = "Loot 2"},
		[4] = {contentid = 964, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 961, priority = 5, type = "Loot 3"},
		[6] = {contentid = 962, priority = 6, type = "Loot 4"},
		[7] = {contentid = 965, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6085, -- Zuiko-maru
		6087, -- Dojun-maru
		6091, -- Yojimbo
	},
	prioritytarget = {
		[1] = {contentid = 6086, priority = 1}, -- Harakiri Kosho
		[2] = {contentid = 6086, priority = 1}, -- Joi Summoner
		[3] = {contentid = 6077, priority = 1}, -- Joi Summoner
		[4] = {contentid = 6088, priority = 1}, -- Elite Onmitsu
		[5] = {contentid = 6083, priority = 1}, -- Harakiri Hanya
		[6] = {contentid = 6084, priority = 1}, -- Harakiri Hanya
		[7] = {contentid = 3305, priority = 1}, -- Dragon's Head -- Comment if conflict with Pile of Gold interact
	},
	avoidentity = {
		[1] = {contentid = 6086, radius = 6}, --Harakiri Kosho
	},
	incombatinteract = {
		[1] = {
			interactid = 2007814, -- Pile of Gold
			type = "interact",
			who = "closest",
		},
	},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "6085", --1st boss
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  { -- Middle
				[1] = {x = -136.66, y = 0.15, z = 0.00},
				[2] = {x = -136.66, y = 0.15, z = 0.00},
				[3] = {x = -136.66, y = 0.15, z = 0.00},
				[4] = {x = -136.66, y = 0.15, z = 0.00},
			},
			timetoreturn = 5
		},
		[2] = {
			id = 95,
			contentid = "6085", -- 2nd boss player-centered lightning circles
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 274.78, y = -90.80, z = 43.82}, --NW
				[2] = {x = 285.32, y = -90.85, z = 44.42}, --NE
				[3] = {x = 285.40, y = -90.85, z = 56.83}, --SE
				[4] = {x = 272.41, y = -90.85, z = 56.91}, --SW
			},
			timetoreturn = 5
		},
	},
	excludeavoid = {},
}

return tbl