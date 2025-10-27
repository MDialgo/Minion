local tbl = {
	name = "The Dusk Vigil",
	mesh = "[Dungeon] Dusk Vigil",
	dutyid = 434,
	level = 51,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.12, y = -0.05, z = -10.52}},
		[2] = {objective = 2, pos = {x = -0.12, y = -0.05, z = -10.52}},
		[3] = {objective = 3, pos = {x = 191.95, y = -8.05, z = -132.37}},
		[4] = {objective = 4, pos = {x = 191.95, y = -8.05, z = -132.37}},
		[5] = {objective = 5, pos = {x = -69.53, y = 32.06, z = -392.4}},
		[6] = {objective = 6, pos = {x = -69.53, y = 32.06, z = -392.4}},
	},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 2005172, priority = 1, req = {complete = false, objective = 1}, type = "Lever"},
		[2] = {contentid = 2005173, priority = 2, req = {complete = false, objective = 1}, type = "Winch"},
		[3] = {contentid = 435, priority = 3, type = "Boss 1 Loot"},
		[4] = {contentid = 431, priority = 4, type = "Loot 1"},
		[5] = {contentid = 2005175, priority = 5, req = {complete = false, objective = 5}, type = "Key"},
		[6] = {contentid = 2005177, priority = 6, req = {complete = false, objective = 5}, type = "Barracks Door"},
		[7] = {contentid = 432, priority = 7, type = "Loot 2"},
		[8] = {contentid = 2005176, priority = 8, req = {complete = false, objective = 5}, type = "Key"},
		[9] = {contentid = 2005178, priority = 9, req = {complete = false, objective = 6}, type = "Commander's Door"},
		[10] = {contentid = 436, priority = 10, type = "Boss 2 Loot"},
		[11] = {contentid = 433, priority = 11, type = "Loot 3"},
		[12] = {contentid = 434, priority = 12, type = "Loot 4"},
		[13] = {contentid = 2005357, priority = 13, req = {complete = false, objective = 6}, type = "Chapel Door"},
		[14] = {contentid = 437, priority = 14, type = "Boss 3 Loot"}, -- Orchestrion
	},
	bossids = {
		3405, -- Towering Oliphant
		3406, -- Ser Yuhelmeric
		3409, -- Opinicus
	},
	forcemeleerange = {3406},
	enemytargetdistance = 35,
	prioritytargetdistance = 35,
	prioritytarget = {
		[1] = {contentid = 3388, priority = 1, type = "mylos"},
		[2] = {contentid = 3407, priority = 2, type = "Second Boss Adds"},
		[3] = {contentid = 3408, priority = 3, type = "Second Boss Adds"},
	},
	tankat = {
		[1] = {contentid = 3405, frompercent = 100, pos = {x = -0.46,y = -0.04,z = -12.08}, topercent = 95, desc = "tank first boss away from party from 100-95%"},
		[2] = {contentid = 3409, frompercent = 100, pos = {x = -69.68,y = 32.05,z = -399.08}, topercent = 95, desc = "tank last boss away from party from 100-95%"},
	},
	useaction = {},
	advancedavoid = {
		[1] = {args = {dist = 2, entityone = 4381, entitytwo = 3410}, castingid = 3695, desc = "Whirling Gaol", type = "los"},
		[2] = {args = {dist = 2, entityone = 3409, entitytwo = 3410}, castingid = 3696, desc = "Winter", type = "los"},
		--[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
		--		function customfunction()
		--			KitanoiFuncs.LoadMesh("[Dungeon] Dusk Vigil")
		--		end
		--	]]
		--},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			contentid = "3405",
			desc = "1st boss spread for marker",
			detectwho = "all",
			id = 1,
			pos = {
				[1] = {x = -69.68,y = 32.05,z = -399.08},
				[2] = {x = 6.23,y = -0.02,z = -4.81},
				[3] = {x = 0.01,y = -0.02,z = 1.47},
				[4] = {x = -6.23,y = 0.03,z = -4.94},
			},
			timetoreturn = 8,
			type = "move",
		},
	},
	dontcastwhenmoving = false,
}

return tbl