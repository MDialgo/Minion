local tbl = {
	name = "Cutter's Cry",
	mesh = "[Dungeon] Cutter's Cry v2",
	dutyid = 1303,
	level = 38,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 262.21, y = -3.87, z = 95.28}},
		[2] = {objective = 2, pos = {x = 82.19, y = -1.00, z = 155.12}},
		[3] = {objective = 3, pos = {x = -14.60, y = -9.51, z = 209.69}},
		[4] = {objective = 4, pos = {x = -143.08, y = -4.24, z = 139.64}},
		[5] = {objective = 5, pos = {x = -180.48, y = -4.63, z = -218.40}},
	},
	interactdistance = 80,
	interacts = {
		[1] = {contentid = 164, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 159, priority = 2, type = "Loot 1"},
		[3] = {contentid = 161, priority = 3, type = "Loot 2"},
		[4] = {contentid = 166, priority = 4, type = "Boss 2 Loot"},
		--[5] = {contentid = 162, priority = 5, type = "Loot 3"}, -- Too out of the way
		--[6] = {contentid = 163, priority = 6, type = "Loot 4"}, -- Too out of the way
		[7] = {contentid = 167, priority = 7, type = "Boss 3 Loot"}, -- Abomination Orchestrion Roll
	},
	bossids = {
		1585, -- Myrmidon Princess
		1589, -- Giant Tunnel Worm
		1590, -- Chimera -- Chimera Card
	},
	forcemeleerange = {1590},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 1588, priority = 2, type = "Myrmidon Soldier"},
		[2] = {contentid = 1586, priority = 1, type = "Myrmidon Marshal"},
	},
	avoidentity = {
		[1] = {contentid = 1805, radius = 3},
		[2] = {contentid = 1589, radius = 10},
		[3] = {contentid = 1848, radius = 15},
	},
	tankat = {
		[1] = {contentid = 1589, frompercent = 100, topercent = 95, pos = { x = -143.08, y = -4.24, z = 139.64}, desc = "tank Sandworm boss away from party from 100-95%"},
		[2] = {contentid = 1590, frompercent = 100, topercent = 1, pos = { x = -180.1, y = -4.90, z = -205.3}, desc = "tank Chimera boss away from party from 100-1%"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					KitanoiFuncs.LoadMesh("[Dungeon] Cutter's Cry v2")
				end
			]]
		},
	},
	overheadmarkers = {},
	puddledata = {},
}

return tbl