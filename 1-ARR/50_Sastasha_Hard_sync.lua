local tbl = {
	name = "Sastasha (Hard)",
	mesh = "[Dungeon] Sastasha (Hard) v2",
	dutyid = 387,
	level = 50,
	expansion = 2,
	creator = "Dibbi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 166.41600036621, y = 14.013615608215, z = -85.10710144043}},
		[2] = {objective = 2, pos = {x = -83.787071228027, y = 7.3383655548096, z = 15.296841621399}},
		[3] = {objective = 3, pos = {x = -103.5325012207, y = 15.600003242493, z = 143.62890625}},
		[4] = {objective = 4, pos = {x = -300.00769042969, y = 5.5766868591309, z = 270.77124023438}},
		[5] = {objective = 5, pos = {x = -326.36499023438, y = 5.1406764984131, z = 308.783203125}},
	},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 2004406, priority = 1, type = "Drainage Pump"},
		[2] = {contentid = 353, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 2004424, priority = 3, type = "Door to Dead Man's Drink"},
		[4] = {contentid = 354, priority = 4, type = "Boss 2 Loot 1"},
		[5] = {contentid = 355, priority = 5, type = "Boss 2 Loot 2"},
		[6] = {contentid = 352, priority = 6, type = "Loot 1"}, -- Splintered Chest
		[7] = {contentid = 356, priority = 7, type = "Boss 3 Loot"}, -- Tight-beaked Parrot
	},
	bossids = {
		3014, -- Karlabos
		3015, -- Captain Madison
		2904, -- Kraken -- Kraken Card & Faded Copy of Riptide
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytargetdistance = 45,
	prioritytarget = {
		[1] = {contentid = 3011, priority = 1, type = "Drowned Wench"},
		[2] = {contentid = 3019, priority = 1, type = "Captain's Slave"},
		[3] = {contentid = 2904, priority = 2, type = "Kraken"},
		[4] = {contentid = 3015, priority = 2, type = "Captain Madison"},
	},
	incombatinteract = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl