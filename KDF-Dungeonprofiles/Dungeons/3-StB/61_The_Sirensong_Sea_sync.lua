local tbl = {
	name = "The Sirensong Sea",
	mesh = "[HM] - The Sirensong Sea",
	dutyid = 1142,
	level = 61,
	expansion = 4,
	creator = "Rinn",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -2.7, y = 2.9, z = -208}},
		[2] = {objective = 2, pos = {x = -2.7, y = 2.9, z = -208}},
		[3] = {objective = 3, pos = {x = -8, y = 4.45, z = 88}},
		[4] = {objective = 4, pos = {x = -8, y = 4.45, z = 88}},
		[5] = {objective = 5, pos = {x = -44.19, y = 7.75, z = 479.92}},
		[6] = {objective = 6, pos = {x = -44.19, y = 7.75, z = 479.92}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 955, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 951, priority = 2, type = "Loot 1"},
		[3] = {contentid = 952, priority = 3, type = "Loot 2"},
		[4] = {contentid = 956, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 953, priority = 5, type = "Loot 3"},
		[6] = {contentid = 954, priority = 6, type = "Loot 4"},
		[7] = {contentid = 957, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6071, -- Lugat
		6072, -- The Governor
		6074, -- Lorelei
	},
	forcemeleerange= {},
	enemytargetdistance = 80,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 6058, priority = 1, type = "Banshee"},
	},
	ignoretarget = {},
	avoidentity= {
		[1] = {contentid= 6070, radius = 2},
		[2] = {contentid= 6073, radius = 3},
	},
	advancedavoid = {
		[1] = {castingid = 8022, type = "movebehind"},
		[2] = {castingid = 8041, type = "singlefixed", pos = {[1] = {x = -44.66, y = 7.75, z = 464.67}}},
		[3] = {castingid = 8037, type = "singlefixed", pos = {[1] = {x = -44.66, y = 7.75, z = 464.67}}},
		[4] = {castingid = 8038, type = "singlefixed", pos = {[1] = {x = -44.66, y = 7.75, z = 464.67}}},
		[5] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					KitanoiFuncs.LoadMesh("[HM] - The Sirensong Sea")
				end
			]]
		},
	},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "6071",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = -2.7, y = 2.9, z = -208},
				[2] = {x = -2.7, y = 2.9, z = -208},
				[3] = {x = -2.7, y = 2.9, z = -208},
				[4] = {x = -2.7, y = 2.9, z = -208}
			},
			timetoreturn = 5
		},
		[2] = {
			id = 22,
			contentid = "6072",
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 11.2, y = 4.45, z = 79.01},
				[2] = {x = 8.01, y = 4.44, z = 96.82},
				[3] = {x = -26.7, y = 4.44, z = 79.07},
				[4] = {x = -1.32, y = 4.43, z = 62.33}
			},
			returnpos = {
				[1] = {x = -8.02, y = 4.44, z = 79.09},
				[2] = {x = -8.02, y = 4.44, z = 79.09},
				[3] = {x = -8.02, y = 4.44, z = 79.09},
				[4] = {x = -8.02, y = 4.44, z = 79.09}
			},
			timetoreturn = 5
		},
	},
	excludeavoid = {},
}

return tbl