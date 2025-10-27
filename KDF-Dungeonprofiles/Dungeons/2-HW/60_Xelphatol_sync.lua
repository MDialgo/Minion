local tbl = {
	name = "Xelphatol",
	mesh = "[Dungeon] Xelphatol v2",
	dutyid = 1113,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -71, y = 27.99, z = -71}},
		[2] = {objective = 2, pos = {x = -71, y = 27.99, z = -71}},
		[3] = {objective = 3, pos = {x = 245, y = 113.43, z = 13.55}},
		[4] = {objective = 4, pos = {x = 245, y = 113.43, z = 13.55}},
		[5] = {objective = 5, pos = {x = 319, y = 166, z = -414}},
		[6] = {objective = 6, pos = {x = 319, y = 166, z = -414}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 778, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 2007397, priority = 2,type = "Bone Key"},
		[3] = {contentid = 774, priority = 3, type = "Loot 1"},
		[4] = {contentid = 2007373, priority = 4, type = "Gate"},
		[5] = {contentid = 775, priority = 5, type = "Loot 2"},
		[6] = {contentid = 2007388, priority = 6, type = "Lift Lever"},
		[7] = {contentid = 779, priority = 7, type = "Boss 2 Loot"},
		[8] = {contentid = 2007398, priority = 8, type = "Airstone"},
		[9] = {contentid = 776, priority = 9, type = "Loot 3"},
		[10] = {contentid = 2007400, priority = 10, type = "Tailwind Relic", req = {type = "lua", lua = "return KitanoiFuncs.HasKI(2002006)"}},
		[11] = {contentid = 2007399, priority = 11, type = "Airstone"},
		[12] = {contentid = 777, priority = 12, type = "Loot 4"},
		[13] = {contentid = 2007401, priority = 13, type = "Tailwind Relic", req = {type = "lua", lua = "return KitanoiFuncs.HasKI(2002007)"}},
		[14] = {contentid = 780, priority = 14, type = "Boss 3 Loot"}, -- Minion
	},
	bossids = {
		5265, -- Nuzal Hueloc
		5269, -- Dotoli Ciloc
		5272, -- Tozol Huatotl
	},
	enemytargetdistance = 30,
	prioritytargetdistance  = 80,
	prioritytarget = {
		[1] = {contentid = 5267, priority = 1, type = "Airstone"},
		[2] = {contentid = 5274, priority = 1, type = "air balloon"},
	},
	avoidentity = {},
	advancedavoid = {
		[1] = {
			castingid = 6604, -- Boss 1: Hot Blast
			type = "multifixed",
			pos = {
				[1] = {x = -81.68, y = 28.00, z = -57.20},
				[2] = {x = -61.11, y = 27.97, z = -63.74},
				[3] = {x = -83.88, y = 28.00, z = -76.01},
				[4] = {x = -66.76, y = 28.00, z = -81.52},
			},
		},
		[2] = {
			castingid = 6607, -- Boss 2: On High
			type = "multifixed",
			pos = {
				[1] = {x = 245.20, y = 113.43, z = 24.68},
				[2] = {x = 253.47, y = 113.43, z = 13.77},
				[3] = {x = 245.20, y = 113.43, z = 4.57},
				[4] = {x = 236.76, y = 113.43, z = 13.77},
			},
		},
	},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "5272",
			desc= "Stacking",
			type = "move",
			detectwho = "any",
			movetoentity = true,
			timetoreturn = 5,
		},
	},
	puddledata = {},
}

return tbl