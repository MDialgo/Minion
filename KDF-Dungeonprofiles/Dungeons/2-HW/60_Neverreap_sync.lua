local tbl = {
	name = "Neverreap",
	mesh = "[Dungeon] Neverreap",
	dutyid = 420,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		--[1] = {"Thunder Eggs"},
		[2] = {objective = 2, pos = {x = 65.040000915527, y = 38, z = 217.66999816895}},
		[3] = {objective = 3, pos = {x = 173.5, y = 63.970001220703, z = -12}},
		[4] = {objective = 4, pos = {x = 171, y = 58.5, z = -344}},
		[5] = {objective = 5, pos = {x = 171, y = 58.5, z = -344}},
	},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 1013331, priority = 1, req = {name = "???", objective = 1}, type = "Get Thunder Eggs"},
		[2] = {contentid = 2005130, priority = 2, req = {objective = 1, value = 5}, type = "Cloud Altar 1"},
		[3] = {contentid = 2005131, priority = 3, req = {objective = 1, value = 4}, type = "Cloud Altar 2"},
		[4] = {contentid = 2005132, priority = 4, req = {objective = 1, value = 3}, type = "Cloud Altar 3"},
		[5] = {contentid = 468, priority = 5, type = "Boss 1 Loot"},
		[6] = {contentid = 2005133, priority = 6, req = {objective = 1, value = 2,}, type = "Cloud Altar 3"},
		[7] = {contentid = 464, priority = 7, type = "Loot 1"},
		[8] = {contentid = 465, priority = 8, type = "Loot 2"},
		[9] = {contentid = 469, priority = 9, type = "Boss 2 Loot"},
		[10] = {contentid = 466, priority = 10, type = "Loot 3"},
		[11] = {contentid = 2005134, priority = 11, req = {objective = 1, value = 1}, type = "Cloud Altar 4"},
		[12] = {contentid = 467, priority = 12, type = "Loot 4"},
		[13] = {contentid = 470, priority = 13, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		3726, -- Nunyenunc
		3734, -- Canu Vanu
		3740, -- Waukkeon
	},
	forcemeleerange = {3727},
	enemytargetdistance = 30,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3727, priority = 1, type = "first boss shadow"},
		[2] = {contentid = 3728, priority = 2, type = "first boss feathers"},
		[3] = {contentid = 3735, priority = 3, type = "first boss feathers"},
		[4] = {contentid = 3743, priority = 4, type = "second boss adds"},
		[5] = {contentid = 3742, priority = 5, type = "last boss adds"},
	},
	avoidentity = {
		[1] = {contentid = 3725, radius = 6},
		[2] = {contentid = 3741, radius = 6},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.Neverreap1()"},
		--[2] = {castingid = 4116, pos = {[1] = {x = 173.02, y = 58.55, z = -341.39}}, type = "singlefixed"},
		[2] = {castingid = 4116, type = "multifixed",
			pos = {
				[1] = {x = 173.02, y = 58.55, z = -341.39},
				[2] = {x = 173.02, y = 58.55, z = -341.39},
				[3] = {x = 173.02, y = 58.55, z = -341.39},
				[4] = {x = 173.02, y = 58.55, z = -341.39}
			}
		},
	},
	hasbuff = {},
	excludeavoid ={4116},
	puddledata = {},
}

return tbl