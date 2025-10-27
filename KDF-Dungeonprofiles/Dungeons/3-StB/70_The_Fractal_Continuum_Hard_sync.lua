local tbl = {
	name = "The Fractal Continuum (Hard)",
	mesh = "[Dungeon] The Fractal Continuum (Hard)",
	dutyid = 743,
	level = 70,
	expansion = 4,
	creator = "Ojcamero\nModified by Dialgo for Sync",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1,pos = {x = 1.5411376953125,y = 46.585815429688,z = -324.72729492188}},
		[2] = {objective = 2,pos = {x = 0.31529924273491,y = 46.59700012207,z = -336.01095581055}},
		[3] = {objective = 3,pos = {x = -322.73330688477,y = -14, z = 237.44325256348}},
		[4] = {objective = 4,pos = {x = -345.78469848633, y = -13.81862449646,z = 254.56619262695}},
		[5] = {objective = 5,pos = {x = 0.19999849796295,y = 12,z = 372.3271484375}},
		[6] = {objective = 6,pos = {x = -0.022137369960546,y = -1.1920928955078e-07,z = 312.38854980469}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 1003, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 999, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1000, priority = 3, type = "Loot 2"},
		[4] = {contentid = 2009278, priority = 4, type = "Allagan Teleporter"},
		[5] = {contentid = 1004, priority = 5, type = "Boss 2 Loot"},
		[6] = {contentid = 1001, priority = 6, type = "Loot 3"},
		[7] = {contentid = 2009276, priority = 7, type = "Security Terminal"},
		[8] = {contentid = 1002, priority = 8, type = "Loot 4"},
		[9] = {contentid = 2009277, priority = 9, type = "Security Terminal"},
		[10] = {contentid = 1005, priority = 10, type = "Boss 3 Loot"}, -- Orchestrion
	},
	bossids = {
		7056, -- Motherbit
		7055, -- The Ultima Warrior
		7058, -- The Ultima Beast
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 10,
	prioritytarget = {},
	incombatinteract = {},
	advancedavoid = {
		[1] = {
			castingid = 10149,  -- Citadel Buster
			type = "movebehind",
			dist = 5,
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 70,
			contentid = "7055", -- The Ultima Warrior
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = -326.5, y = -13.82, z = 240.15},
				[2] = {x = -347.4, y = -13.82, z = 259.46},
				[3] = {x = -352.3, y = -13.82, z = 237.24},
				[4] = {x = -332.3, y = -13.82, z = 263.27}
			},
			returnpos = {
				[1] = {x = -339.9, y = -13.82, z = 225.24},
				[2] = {x = -339.9, y = -13.82, z = 225.24},
				[3] = {x = -339.9, y = -13.82, z = 225.24},
				[4] = {x = -339.9, y = -13.82, z = 225.24}
			},
			timetoreturn = 5
		},
		[2] = {
			id = 62,
			contentid = "7055", -- The Ultima Warrior
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = -337.7, y = -13.82, z = 248.71},
				[2] = {x = -337.7, y = -13.82, z = 248.71},
				[3] = {x = -337.7, y = -13.82, z = 248.71},
				[4] = {x = -337.7, y = -13.82, z = 248.71}
			},
			timetoreturn = 5
		},
		[3] = {
			id = 28, -- Allagan Gravity
			contentid = "7058", -- The Ultima Beast
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 0.00, y = 0.00, z = 315.00},
				[2] = {x = 15.00, y = 0.00, z = 300.00},
				[3] = {x = 0.00, y = 0.00, z = 285.00},
				[4] = {x = -15.00, y = 0.00, z = 300.00}
			},
		},
		[4] = {
			id = 87, -- Flare Star
			contentid = "7058", -- The Ultima Beast
			desc= "Flare",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = -10.00, y = 0.00, z = 288.00},
				[2] = {x = -10.00, y = 0.00, z = 288.00},
				[3] = {x = -10.00, y = 0.00, z = 288.00},
				[4] = {x = -10.00, y = 0.00, z = 288.00}
			},
			returnpos = {
				[1] = {x = 5.00, y = 0.00, z = 300.00},
				[2] = {x = 5.00, y = 0.00, z = 300.00},
				[3] = {x = 5.00, y = 0.00, z = 300.00},
				[4] = {x = 5.00, y = 0.00, z = 300.00}
			},
			timetoreturn = 5
		},
	},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl