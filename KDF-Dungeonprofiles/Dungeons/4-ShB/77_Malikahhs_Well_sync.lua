local tbl = {
	name = "Malikah's Well",
	mesh = "[HM] - Malikah's Well",
	dutyid = 836,
	level = 77,
	expansion = 5,
	creator = "Koyote@6642",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 277.8219909668, y = 16.999990463257, z = 204.78082275391}},
		[2] = {objective = 2, pos = {x = 195.55052185059, y = 12.052330970764, z = 145.41624450684}},
		[3] = {objective = 3, pos = {x = 208.6943359375, y = -86.000007629395, z = 274.52978515625}},
		[4] = {objective = 4, pos = {x = 200.88366699219, y = -84, z = 169.50877380371}},
		[5] = {objective = 5, pos = {x = 196.87887573242, y = -93.39990234375, z = -96.460243225098}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 1159, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1155, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1156, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1160, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1157, priority = 5, type = "Loot 3"},
		[6] = {contentid = 1158, priority = 6, type = "Loot 4"},
		[7] = {contentid = 1161, priority = 7, type = "Boss 3 Loot"}, -- Armadillo Bowler, Deep Down Orchestrion Roll & Iron Torch
	},
	bossids = {
		8252, -- Greater Armadillo
		8250, -- Amphibious Talos
		8249, -- Lightwarden: Storge -- Storge Card
	},
	forcemeleerange = {8246,8250},
	enemytargetdistance = 30,
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 9040,priority = 1,type = "Pack Armadillo"},
	},
	advancedavoid = {
		[1] = {castingid = 15999, creatordesc = "", desc = "Swift Spill", type = "movebehind"},
		[2] = {castingid = 15600, creatordesc = "", desc = "Swift Spill", type = "movebehind"},
		[3] = {castingid = 15590, creatordesc = "", desc = "Head Toss", type = "singlefixed",
			pos = {
				[1] = {x = 277,y = 17,z = 204},
			},
		},
		[4] = {castingid = 15593, creatordesc = "", desc = "Description", type = "singlefixed",
			pos = {
				[1] = {x = 268, y = 16, z = 201},
			},
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {15590},
	pullenemyoutofpuddle = false,
}

return tbl