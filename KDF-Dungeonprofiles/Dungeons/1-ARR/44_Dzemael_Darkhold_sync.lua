local tbl = {
	name = "Dzemael Darkhold",
	mesh = "[Dungeon] Dzemael Darkhold v2",
	dutyid = 1330,
	level = 44,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 43.21, y = -14.40, z = 73.19}},
		[2] = {objective = 2, pos = {x = -95.29, y = -30.50, z = -33.90}},
		[3] = {objective = 3, pos = {x = 16.34, y = -17.89, z = -162.82}},
		[4] = {objective = 4, pos = {x = 83.48, y = -38.95, z = -169.56}},
	},
	interactdistance = 30,
	interacts = {
		--[1] = {contentid = 170, priority = 1, type = "Loot 1"}, -- Too out of the way
		[2] = {contentid = 174, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 2000458, priority = 3, type = "Magitek Transporter"},
		[4] = {contentid = 172, priority = 4, type = "Loot 2"},
		[5] = {contentid = 173, priority = 5, type = "Loot 3"},
		[6] = {contentid = 175, priority = 6, type = "Boss 2 Loot 1"},
		[7] = {contentid = 176, priority = 7, type = "Boss 2 Loot 2"},
		[8] = {contentid = 2000474, priority = 8, type = "Magitek Transporter"},
		[9] = {contentid = 177, priority = 9, type = "Boss 3 Loot"}, -- The Darkhold Orchestrion Roll
	},
	bossids = {
		1397, -- All-seeing Eye
		1415, -- Taulurd
		1396, -- Batraal -- Ahriman Card
	},
	forcemeleerange = {},
	enemytargetdistance = 40,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 2154, priority = 1, type = "Corrupted Crystal"},
		[2] = {contentid = 1396, priority = 2, type = "Batraal"},
	},
	ignoretarget = {},
	tankat = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					KitanoiFuncs.LoadMesh("[Dungeon] Dzemael Darkhold v2")
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	dontexcludeaoe = {1167},
	staybehindentity = {1396},
	puddledata = {},
	pullenemyoutofpuddle = false,
}

return tbl