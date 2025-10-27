local tbl = {
	name = "O1N Deltascape V1.0",
	mesh = "Deltascape V1.0",
	dutyid = 691, -- ID de la map
	level = 70,
	expansion = 4,
	creator = "Koyote#6642 / Mist",
	notes = "",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y=0,z=100}},
	},
	forcemeleerange= {5629}, -- ID monster
	interacts = {
		[1] = {contentid = 925, priority = 1, type = "Loot 1"},
		[2] = {contentid = 926, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	avoidentity = {
		[1] = {contentid = 5630, radius = 8, type = "circle"} -- Ball of Fire
	},
	tankat= {
		[1] = {contentid = 5629, frompercent = 100, topercent = 1, pos = {x = 0, y = 0, z = 0}, desc = "Tank at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "5629",
			desc = "stack",
			type = "move",
			detectwho = "any",
			pos = {
				[1] = {x = 0.06, y = 0.20, z = 0.00},
				[2] = {x = 0.06, y = 0.20, z = 0.00},
				[3] = {x = 0.06, y = 0.20, z = 0.00},
				[4] = {x = 0.06, y = 0.20, z = 0.00},
				[5] = {x = 0.06, y = 0.20, z = 0.00},
				[6] = {x = 0.06, y = 0.20, z = 0.00},
				[7] = {x = 0.06, y = 0.20, z = 0.00},
				[8] = {x = 0.06, y = 0.20, z = 0.00},
			},
			returnpos = {
				[1] = {x = 0.06, y = 0.20, z = 0.00},
				[2] = {x = 0.06, y = 0.20, z = 0.00},
				[3] = {x = 0.06, y = 0.20, z = 0.00},
				[4] = {x = 0.06, y = 0.20, z = 0.00},
				[5] = {x = 0.06, y = 0.20, z = 0.00},
				[6] = {x = 0.06, y = 0.20, z = 0.00},
				[7] = {x = 0.06, y = 0.20, z = 0.00},
				[8] = {x = 0.06, y = 0.20, z = 0.00},
			},
			timetoreturn = 8,
		},
		[2] = {
			id = 108, -- Levinbolt
			contentid = "5629",
			desc = "spread",
			type = "move",
			detectwho = "me",
			pos = {
				[1] = {x = 0.05, y = 0.20, z = -12.86}, -- N
				[2] = {x = 9.24, y = 0.20, z = -9.19}, -- NE
				[3] = {x = 12.75, y = 0.20, z = 0.28}, -- E
				[4] = {x = 8.93, y = 0.20, z = 9.33}, -- SE
				[5] = {x = -0.38, y = 0.20, z = 12.66}, -- S
				[6] = {x = -9.31, y = 0.20, z = 8.96}, -- SW
				[7] = {x = -12.97, y = 0.20, z = -0.22}, -- W
				[8] = {x = -9.02, y = 0.20, z = -9.32}, -- NW
			},
			returnpos = {
				[1] = {x = 0.06, y = 0.20, z = 0.00},
				[2] = {x = 0.06, y = 0.20, z = 0.00},
				[3] = {x = 0.06, y = 0.20, z = 0.00},
				[4] = {x = 0.06, y = 0.20, z = 0.00},
				[5] = {x = 0.06, y = 0.20, z = 0.00},
				[6] = {x = 0.06, y = 0.20, z = 0.00},
				[7] = {x = 0.06, y = 0.20, z = 0.00},
				[8] = {x = 0.06, y = 0.20, z = 0.00},
			},
			timetoreturn = 8,
		},
	}, -- overheadmarkers
	excludeavoid = {},
	limitbreak = {},
}

return tbl