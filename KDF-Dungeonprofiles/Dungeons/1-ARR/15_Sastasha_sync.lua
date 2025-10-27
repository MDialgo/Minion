local tbl = {
	name = "Sastasha",
	mesh = "[Dungeon] Sastasha",
	dutyid = 1036,
	level = 15,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 66.639999389648, y = 31.670000076294, z = -39.639999389648}},
		[2] = {objective = 2, pos = {x = 66.639999389648, y = 31.670000076294, z = -39.639999389648}},
		[3] = {objective = 3, pos = {x = -31.030000686646, y = 23.680000305176, z = 58.790000915527}},
		[4] = {objective = 4, pos = {x = -94.949996948242, y = 20.010000228882, z = 192.55999755859}},
		[5] = {objective = 5, pos = {x = -332, y = 5.5700001716614, z = 317}},
	},
	interactdistance = 40,
	interacts = {
		[1] = {contentid = 98, priority = 1, type = "Loot 1"}, -- Seagrot Water
		[2] = {contentid = 2000214, priority = 2, type = "Red Coral"},
		[3] = {contentid = 2000213, priority = 3, type = "Blue Coral"},
		[4] = {contentid = 2000215, priority = 4, type = "Green Coral"},
		[5] = {contentid = 94, priority = 5, type = "Boss 1 Loot"},
		[6] = {contentid = 2000216, priority = 6, type = "Switch"},
		[7] = {contentid = 95, priority = 7, type = "Boss 2 Loot"},
		[8] = {contentid = 2000250, priority = 8, type = "Captain's Quarters Key"},
		[9] = {contentid = 2000227, priority = 9, type = "Captain's Quarters"},
		[10] = {contentid = 2000255, priority = 10, type = "Waverider Gate Key"},
		--[11] = {contentid = 2000256, priority = 11, type = "Key to the Hole"}, -- Too out of the way
		--[12] = {contentid = 2000232, priority = 12, type = "The Hole"}, -- Too out of the way
		--[13] = {contentid = 99, priority = 13, type = "Loot 2"}, -- Too out of the way
		--[14] = {contentid = 100, priority = 14, type = "Loot 3"}, -- Causes nav problems
		--[15] = {contentid = 101, priority = 15, type = "Loot 4"}, -- Causes nav problems
		[16] = {contentid = 2000231, priority = 16, type = "Waverider Gate", req = {complete = true, objective = 4}},
		[17] = {contentid = 93, priority = 17, type = "Boss 3 Loot"}, -- From the Depths Orchestrion Roll
	},
	bossids = {
		1204, -- Chopper
		1382, -- Captain Madison
		1206, -- Denn the Orcatoothed -- Sahagin Card & Faded Copy of Riptide
	},
	enemytargetdistance = 35,
	prioritytarget = {},
	advancedavoid = {},
	overheadmarkers = {},
	enemylos = true,
}

return tbl