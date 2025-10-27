local tbl = {
	name = "Saint Mocianne's Arboretum (Hard)",
	mesh = "Saint Mocianne's Arboretum (Hard)",
	dutyid = 788,
	level = 70,
	expansion = 3,
	creator = "Kitanoi/Goobypls#0959",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 45.31, y= 3, z= -103.57}},
		[2] = {objective = 2, pos = {x= 0.25, y= 3, z= -81.91}},
		[3] = {objective = 3, pos = {x= 9.89, y= -360.17, z= -68.68}},
		[4] = {objective = 4, pos = {x= 87.1, y= -358.65, z= -84.44}},
		[5] = {objective = 5, pos = {x= 342.44, y= -345.52, z= -339.39}},
		[6] = {objective = 6, pos = {x= 352.34, y= -345.52, z= -350.46}},
	},
	interacts = {
		[1] = {contentid = 1093, priority = 1, req = {objective = 2, complete = true}, type = "Boss 1 Loot"},
		[2] = {contentid = 1089, priority = 2, req = {objective = 2, complete = true}, type = "Loot 1"},
		[3] = {contentid = 1090, priority = 3, req = {objective = 2, complete = true}, type = "Loot 2"},
		[4] = {contentid = 1094, priority = 4, req = {objective = 4, complete = true}, type = "Boss 2 Loot"},
		[5] = {contentid = 1091, priority = 5, req = {objective = 4, complete = true}, type = "Loot 3"},
		[6] = {contentid = 1092, priority = 6, req = {objective = 4, complete = true}, type = "Loot 4"},
		[7] = {contentid = 1095, priority = 7, req = {}, type = "Boss 3 Loot"}, -- Minion & Orchestrion & Verdant Partition
	},
	bossids = {
		7659, -- Nullchu
		7660, -- Lakhamu
		7662, -- Tokkapchi
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 7654, priority = 1, type = "Blooming Biloko (They turn you into Dorpokkurs"},
		[2] = {contentid = 7665, priority = 2, type = "Last boss adds"},  -- Not needed unsynced
	},
	tankat= {
		[1] = {contentid = 7662, frompercent = 100, topercent = 0, pos = {x= 363.84, y= -345.52, z= -350.2}, desc = "tank last boss on platform"},
	},
	useaction = {
	},
	advancedavoid = {
		[1] = {castingid = 11855, type = "movetoentity", entitylist = "contentid=7650,maxdistance=1", targetable = false, casttime = 1, delay = 0, desc = "Raskovnik for Devour - First Boss"},
		[2] = {castingid = 11851, type = "multifixed",
			pos = {
				[1] = {x = 12.41, y = 3, z = -87.91},
				[2] = {x = -4.16, y = 3, z = -92.82},
				[3] = {x = -10.69, y = 3, z = -82.17},
				[4] = {x = 0.4, y = 3, z = -69.87}
			}
		},
		[3] = {castingid = 12587, type = "faceaway"},
		[4] = {castingid = 12600, type = "multifixed",
			pos = {
				[1] = {x = 364.26, y = -345.52, z = -361.59},
				[2] = {x = 341.36, y = -345.52, z = -362.22},
				[3] = {x = 364.69, y = -345.52, z = -338.93},
				[4] = {x = 341.39, y = -345.52, z = -339.43}
			}
		},
		--[[[5] = {castingid = 12606, type = "multifixed",
			pos = {
				[1] = {x = 363.84, y = -345.52, z = -350.2},
				[2] = {x = 352.32, y = -345.52, z = -339.06},
				[3] = {x = 341.41, y = -345.52, z = -350.78},
				[4] = {x = 352.77, y = -345.52, z = -361.73}
			}
		},]]
		[6] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
			KitanoiFuncs.LoadMesh("Saint Mocianne's Arboretum (Hard)")
			]]
		},
},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {12594,12595,12607,12596},
	limitbreak = {},
	tethers = {},
	largerpulls = {distance = 45},
	puddledata= {
		[1] = {castid = 11853, radius= 10, duration = 60, desc = "Puddles left at first boss"},
	},
}

return tbl