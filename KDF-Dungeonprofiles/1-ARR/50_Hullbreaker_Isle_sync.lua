local tbl = {
	name = "Hullbreaker Isle",
	mesh = "[Dungeon] Hullbreaker Isle",
	dutyid = 361,
	level = 50,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 220.23, y = 65.00, z = -24.92}},
		[2] = {objective = 2, pos = {x = 220.23, y = 65.00, z = -24.92}},
		[3] = {objective = 3, pos = {x = -87.63, y = 44.41, z = -124.86}},
		[4] = {objective = 4, pos = {x = -87.63, y = 44.41, z = -124.86}},
		[5] = {objective = 5, pos = {x = -367.22, y = 2.00, z = 52.04}},
		[6] = {objective = 6, pos = {x = -367.22, y = 2.00, z = 52.04}},
	},
	interactdistance = 60,
	interacts = {
		[1] = {contentid = 279, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 275, priority = 2, type = "Loot 1"},
		[3] = {contentid = 2004074, priority = 2, type = "Treasure Coffer"},
		[4] = {contentid = 2004075, priority = 2, type = "Treasure Coffer"},
		[5] = {contentid = 2004054, priority = 2, type = "Stone Tablet 1"},
		[6] = {contentid = 2004057, priority = 3, type = "Stone Pedestal 1"},
		[7] = {contentid = 276, priority = 4, type = "Loot 2"},
		[8] = {contentid = 277, priority = 4, type = "Loot 3"}, -- Wild Banana Shoot
		[9] = {contentid = 2004076, priority = 4, type = "Treasure Coffer"},
		[10] = {contentid = 2004077, priority = 4, type = "Treasure Coffer"},
		[11] = {contentid = 2004078, priority = 4, type = "Treasure Coffer"},
		[12] = {contentid = 2004079, priority = 4, type = "Treasure Coffer"},
		[13] = {contentid = 2004055, priority = 4, type = "Stone Tablet 2"},
		[14] = {contentid = 2004056, priority = 4, type = "Stone Tablet 3"},
		[15] = {contentid = 2004058, priority = 5, type = "Stone Pedestal 2"},
		[16] = {contentid = 2004059, priority = 5, type = "Stone Pedestal 3"},
		[17] = {contentid = 280, priority = 6, type = "Boss 2 Loot 1"},
		[18] = {contentid = 281, priority = 7, type = "Boss 2 Loot 2"},
		[19] = {contentid = 278, priority = 8, type = "Loot 4"}, -- Naughty Nanka
		[20] = {contentid = 282, priority = 9, type = "Boss 3 Loot"}, -- Horizons Calling Orchestrion Roll
	},
	bossids = {
		2901, -- Sasquatch
		2903, -- Sjoorm
		2904, -- Kraken
	},
	forcemeleerange = {},
	enemytargetdistance = 60,
	prioritytargetdistance = 35,
	prioritytarget = {},
	avoidentity = {
		[1] = {contentid = 2891, radius = 4}, -- Iron Leg Trap
		[2] = {contentid = 2916, radius = 4}, -- Boss 2: Nykk
	},
	incombatinteract = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Boss 1: Bananas", functioncode = [[
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "Boss 3: Tentacles", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList("contentid=2905;2906,maxdistance=80,nearest,alive,targetable")
					if (not targ and wall) then
						for k, v in pairs(wall) do
							if Player.targetid ~= v.id then
								Player:SetTarget(v.id)
								break
							end
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	puddledata = {},
}

return tbl