local tbl = {
	name = "Castrum Abania",
	mesh = "[Dungeon] Castrum Abania",
	dutyid = 1145,
	level = 69,
	expansion = 4,
	creator = "Dialgo",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= -212.98, y= -2.00, z= 200.97}},
		[2] = {objective = 2, pos = {x= -212.98, y= -2.00, z= 200.97}},
		[3] = {objective = 3, pos = {x= 25.31, y= 14.00, z= 186.24}},
		[4] = {objective = 4, pos = {x= 25.31, y= 14.00, z= 186.24}},
		[5] = {objective = 5, pos = {x= 285.15, y= 20.00, z= -37.61}},
		[6] = {objective = 6, pos = {x= 285.15, y= 20.00, z= -37.61}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 946, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 942, priority = 2, type = "Loot 1"},
		[3] = {contentid = 943, priority = 3, type = "Loot 2"},
		[4] = {contentid = 947, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 944, priority = 5, type = "Loot 3"},
		[6] = {contentid = 945, priority = 6, type = "Loot 4"},
		[7] = {contentid = 948, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6263, -- Magna Roader
		12392, -- Subject Number XXIV
		6268, -- Inferno
	},
	enemytargetdistance = 30,
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 6264, priority = 1, type = "12th Legion Optio"},
	},
	--dontclearfriendlytargets = {6266}, -- Magna Roader cannons
	tankat= {},
	--[[incombatinteract = {
		[1] = { -- Magna Roader cannons
			interactid = 6266,
			type = "interact",
			who = "closest",
		},
	},]]
	--[[useaction = {
		[1] = {
			contentid = 6263,
			actiontree = 1,
			actionid = 7962,
			target = "enemypos",
		},
	},]]
	advancedavoid = {
		[1] = {castingid = 33464, type = "multifixed", -- Subject Number XXIV : Thunder II
			pos = {
				[1] = {x= 10.48,y= 14.18,z= 197.99},
				[2] = {x= -1.02,y= 14.18,z= 186.48},
				[3] = {x= 10.48,y= 14.18,z= 174.98},
				[4] = {x= 21.99,y= 14.18,z= 186.48}
			}
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					KitanoiFuncs.LoadMesh("[Dungeon] Castrum Abania")
				end
			]]
		},
	},
	overheadmarkers = {
		[1] = {
			id = 161,
			contentid = "12392",
			desc= "Stacking",
			type = "move",
			detectwho = "any",
			movetoentity = true,
			timetoreturn = 5,
		},
	},
	excludeavoid = {
		--8318, -- Wild Speed
		33462, -- Fire II Stack
		33464, -- Thunder II Towers
	},
}

return tbl