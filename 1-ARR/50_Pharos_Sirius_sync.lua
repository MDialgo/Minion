local tbl = {
	name = "Pharos Sirius",
	mesh = "[KDF] - Pharos Sirius",
	dutyid = 160,
	level = 50,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 42, y = 30, z = -56}},
		[2] = {objective = 2, pos = {x = 42, y = 30, z = -56}},
		[3] = {objective = 3, pos = {x = -15, y = 90, z = 0}},
		[4] = {objective = 4, pos = {x = 0, y = 140, z = 0}},
		[5] = {objective = 5, pos = {x = -15, y = 194, z = 0}},
	},
	interactdistance = 65,
	interacts = {
		[1] = {contentid = 230, priority = 1, type = "Loot 1"},
		[2] = {contentid = 234, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 231, priority = 3, type = "Loot 2"},
		[4] = {contentid = 232, priority = 4, type = "Loot 3"},
		--[5] = {contentid = 233, priority = 5, type = "Loot 4"}, -- Too out of the way
		[6] = {contentid = 235, priority = 6, type = "Boss 2 Loot"},
		[7] = {contentid = 2002730, priority = 7, type = "Aether Valve"},
		[8] = {contentid = 2002731, priority = 8, type = "Aether Valve"},
		[9] = {contentid = 236, priority = 9, type = "Boss 3 Loot"},
		[10] = {contentid = 237, priority = 10, type = "Boss 4 Loot"}, -- N/A
	},
	bossids = {
		2259, -- Symond the Unsinkable
		2261, -- Zu
		2264, -- Tyrant
		2265, -- Siren -- Siren Card & Faded Copy of A Light in the Storm
	},
	forcemeleerange = {2259,2261},
	enemytargetdistance = 20,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 2260, priority = 1, type = "First Boss Dogs"},
		[2] = {contentid = 2259, priority = 2, type = "First Boss"},
		[3] = {contentid = 2262, priority = 1, type = "Second Boss tether"},
		[4] = {contentid = 2263, priority = 2, type = "Second Boss Adds"},
		[5] = {contentid = 2261, priority = 3, type = "Second Boss"},
		[6] = {contentid = 2256, priority = 1, type = "Third Boss Adds"},
		[7] = {contentid = 2266, priority = 1, type = "Fourth Boss Adds"},
	},
	ignoretarget = {2267},
	tankat = {
		[1] = {contentid = 2259, frompercent = 100, topercent = 0, pos = {x = 41.93, y = 30.00, z = -59.67}, desc = "tank the 1st Boss here"},
		[2] = {contentid = 2261, frompercent = 100, topercent = 0, pos = {x = 5.97, y = 90.14, z = 0.12}, desc = "tank the 1st Boss here"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {
		1669 -- Corrupted crystal fall
	},
	staybehindentity = {2261,2265},
	puddledata = {
		[1] = {castid = 1542, desc = "first boss puddle", duration = 20, radius = 15},
	},
}

return tbl