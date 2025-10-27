local tbl = {
	name = "Brayflox Longstop",
	mesh = "[Dungeon] Brayflox's Longstop v2",
	dutyid = 1041,
	level = 32,
	expansion = 2,
	creator = "Kitanoi / Rinn#4747",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 21.909999847412, y = 7.0999999046326, z = 27.379999160767}},
		[2] = {objective = 2, pos = {x = 114.30000305176, y = -3.1549999713898, z = -21.090000152588}},
		[3] = {objective = 3, pos = {x = -13.539999961853, y = 5.7399997711182, z = -91.400001525879}},
		[4] = {objective = 4, pos = {x = -13.300000190735, y = 35.669998168945, z = -237.69999694824}},
		[5] = {objective = 5, pos = {x = -13.300000190735, y = 35.669998168945, z = -237.69999694824}},
	},
	interactdistance = 30,
	interacts = { -- WIP to get every chest
		[1] = {contentid = 1004346, priority = 1, req = {complete = false, objective = 1}, type = "Goblin Pathfinder"},
		[2] = {contentid = 2001462, priority = 2, req = {complete = true, objective = 1}, type = "Runstop Headgate"},
		[3] = {contentid = 109, priority = 3, type = "Boss 1 Loot"},
		[4] = {contentid = 105, priority = 4, type = "Loot 1"},
		[5] = {contentid = 106, priority = 5, type = "Loot 2"}, -- SE
		[6] = {contentid = 107, priority = 6, type = "Loot 3"}, -- NE
		[7] = {contentid = 108, priority = 7, type = "Loot 4"}, -- SW
		[8] = {contentid = 110, priority = 8, type = "Boss 2 Loot"},
		[9] = {contentid = 111, priority = 9, type = "Boss 3 Loot"},
		[10] = {contentid = 2001466, priority = 10, type = "Longstop Gutgate"},
		[11] = {contentid = 112, priority = 11, type = "Boss 4 Loot"}, -- Lipflaps on Longstops Orchestrion Roll
	},
	bossids = {
		1280, -- Great Yellow Pelican
		1284, -- Inferno Drake
		1286, -- Hellbender
		1279, -- Aiatar
	},
	forcemeleerange = {},
	enemytargetdistance = 20,
	prioritytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 1282, priority = 1, type = "first boss adds"},
		[2] = {contentid = 1285, priority = 1, type = "second boss adds"},
		[3] = {contentid = 1383, priority = 1, type = "third boss bubble"},
		[4] = {contentid = 1289, priority = 1, type = "Painted Colibri"},
		[5] = {contentid = 1287, priority = 2, type = "Gully Galago"},
		[6] = {contentid = 1288, priority = 3, type = "Raveled Raincatcher"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {563},
}

return tbl