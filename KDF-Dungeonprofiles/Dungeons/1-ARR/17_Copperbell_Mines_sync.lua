local tbl = {
	name = "Copperbell Mines",
	mesh = "[Dungeon] Copperbell Mines v2",
	dutyid = 1038,
	level = 17,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -100, y = -57.7, z = -7.22}},
		[2] = {objective = 2, pos = {x = -100, y = -57.7, z = -7.22}},
		[3] = {objective = 3, pos = {x = -100, y = -57.7, z = -7.22}},
		[4] = {objective = 4, pos = {x = -100, y = -57.7, z = -7.22}},
		[5] = {objective = 5, pos = {x = -100, y = -57.7, z = -7.22}},
	},
	interacts = {
		[1] = {contentid = 2000159, priority = 1, type = "Tiny Key"},
		[2] = {contentid = 2000160, priority = 2, type = "Sealed Blasting Door"},
		[3] = {contentid = 2000162, priority = 3, type = "Lift Lever incase lift is downstairs"},
		[4] = {contentid = 2000163, priority = 4, type = "Lift Lever inside lift"},
		[5] = {contentid = 2000169, priority = 5, type = "Firesand 1"},
		[6] = {contentid = 2000172, priority = 6, type = "Firesand 2"},
		[7] = {contentid = 2001536, priority = 7, type = "Powder Chamber"},
		[8] = {contentid = 2000170, priority = 8, type = "Blasting Device"},
		[9] = {contentid = 2000178, priority = 9, type = "Tiny Key"},
		[10] = {contentid = 52, priority = 10, type = "Boss 1 Loot"},
		[11] = {contentid = 2000173, priority = 11, type = "Sealed Blasting Door", req = {objective = 2, complete = true}},
		[12] = {contentid = 65, priority = 12, type = "Loot 1"},
		[13] = {contentid = 2000174, priority = 13, type = "Lift Lever incase lift is downstairs"},
		[14] = {contentid = 2000175, priority = 14, type = "Lift Lever inside lift"},
		[15] = {contentid = 2001531, priority = 15, type = "Firesand"},
		[16] = {contentid = 2000179, priority = 16, type = "Firesand"},
		[17] = {contentid = 57, priority = 17, type = "Loot 2"},
		[18] = {contentid = 2001537, priority = 18, type = "Powder Chamber", req = {objective = 1, value = 2}},
		[19] = {contentid = 2000180, priority = 19, type = "Blasting Device", req = {type = "noenemy"}},
		[20] = {contentid = 2001532, priority = 20, type = "Firesand", req = {objective = 3, complete = true}},
		[21] = {contentid = 53, priority = 21, type = "Boss 2 Loot", req = {objective = 3, complete = true}},
		[22] = {contentid = 2001533, priority = 22, type = "Firesand", req = {objective = 3, complete = true}},
		[23] = {contentid = 2001538, priority = 23, type = "Powder Chamber"},
		[24] = {contentid = 2001534, priority = 24, type = "Blasting Device"},
		[25] = {contentid = 59, priority = 25, type = "Loot 3"},
		[26] = {contentid = 58, priority = 26, type = "Loot 4"},
		[27] = {contentid = 51, priority = 27, type = "Boss 3 Loot"}, -- Below Orchestrion Roll
	},
	bossids = {
		548, -- Kottos
		554, -- Ichorous Ire
		101, -- Gyges the Great
	},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 985, priority = 1, type = "spriggan"},
		[2] = {contentid = 1303, priority = 1, type = "Blasting Cap"},
	},
	ignoretarget = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "No LoS Clear target", functioncode = [[
				function customfunction()
					local tar = Player:GetTarget()
					if tar then
						if not tar.los then
							Player:ClearTarget()
						end
					end
				end
			]]
		},
	},
	enemylos = false,
}

return tbl