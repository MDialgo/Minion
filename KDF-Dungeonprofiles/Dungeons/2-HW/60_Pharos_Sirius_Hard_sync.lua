local tbl = {
	name = "Pharos Sirius (Hard)",
	mesh = "[Dungeon] Pharos Sirius (Hard)",
	dutyid = 510,
	level = 60,
	expansion = 3,
	creator = "Reign/Koyote",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -1.0406694412231, y = 90, z = -17.404682159424}},
		[2] = {objective = 2, pos = {x = 0.22400000691414, y = 90.067001342773, z = 11.357999801636}},
		[3] = {objective = 3, pos = {x = 24.803958892822, y = 30.00118637085, z = -55.916320800781}},
		[4] = {objective = 4, pos = {x = 51.53332901001, y = 30.000602722168, z = -56.06224822998}},
		[5] = {objective = 5, pos = {x = -95.190933227539, y = -5.55100440979, z = -273.47805786133}},
		[6] = {objective = 6, pos = {x = -96.135322570801, y = -5.5510101318359, z = -296.24639892578}},
	},
	interactdistance = 40,
	interacts = {
		[1] = {contentid = 499, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 495, priority = 2, type = "Loot 1"},
		[3] = {contentid = 496, priority = 3, type = "Loot 2"},
		[4] = {contentid = 2006467, priority = 4, type = "Candlekeep Key"},
		[5] = {contentid = 2006470, priority = 5, type = "Locked Door"},
		[6] = {contentid = 500, priority = 6, type = "Boss 2 Loot"},
		[7] = {contentid = 497, priority = 7, type = "Loot 3"},
		[8] = {contentid = 498, priority = 8, type = "Loot 4"},
		[9] = {contentid = 501, priority = 9, type = "Boss 3 Loot"}, -- N/A
	},
	bossids = {
		4567, -- Ghrah Luminary
		4571, -- 8th Order Patriarch Be Gu
		4575, -- Progenitrix
		4576, -- Progenitor -- Progenitrix Card & Upon the Rocks Orchestrion Roll
	},
	forcemeleerange = {},
	enemytargetdistance = 35,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 4568, priority = 1, type = "Corruption"},
		[2] = {contentid = 4563, priority = 2, type = "Simple Bomb Incubator"},
		[3] = {contentid = 4578, priority = 1, type = "Grey Bomb"},
		[4] = {contentid = 4553, priority = 2, type = "Corrupted Flan"},
		[5] = {contentid = 4561, priority = 2, type = "Construct 8"},
		[6] = {contentid = 4567, priority = 1, type = "1st Boss"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
	enemylos = true,
}

return tbl