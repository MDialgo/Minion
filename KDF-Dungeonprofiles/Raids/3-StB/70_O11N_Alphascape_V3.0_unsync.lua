local tbl = {
	name = "O11N Alphascape V3.0",
	mesh = "The Interdimensional Rift",
	dutyid = 800, -- ID de la map
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "Solo only possible as a Tank",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y= 0,z=100}},
	},
	forcemeleerange= {7695,7852}, -- ID monster
	interacts = {
		[1] = {contentid = 1080, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1079, priority = 2, type = "Loot 2"},
		[3] = {contentid = 1099, priority = 3, type = "Loot 3"},
	},
	dontclearfriendlytargets = {7852},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 7696, priority = 1, type = "Punch"},
		[2] = {contentid = 7695, priority = 2, type = "Omegay"},
		[3] = {contentid = 7852, priority = 3, type = "Conductive"},
	},
	tankat= {
		--[1] = {contentid = 7695, frompercent = 100, topercent = 1, pos = {x = 101.5, y = 0, z = 87.5}, desc = "Tank Omega at this pos from 100-1%"},
		[1] = {contentid = 7695, frompercent = 100, topercent = 1, pos = {x = 88.25, y = 0, z = 89.03}, desc = "Tank Omega at this pos from 100-1%"},
	},
	useaction = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (Player:GetTarget() and Player:GetTarget().contentid == 7852) then if (ActionList:Get(5,26):IsReady()) then ActionList:Get(5,26):Cast(Player:GetTarget().id) end end end"},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (Player:GetTarget() and Player:GetTarget().contentid == 7696) then if (ActionList:Get(5,26):IsReady()) then ActionList:Get(5,26):Cast(Player:GetTarget().id) end end end"},
	},
	advancedavoid = {
		[1] = {
			castingid = 12924, --- Flamethrower Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 92.15, y = 0, z = 115.76,}, -- OK
				[2] = {x = 89.26, y = 0, z = 103.15},  -- OK
				[3] = {x = 112.28, y = 0, z = 103.15}, -- OK
				[4] = {x = 108.89, y = 0, z = 115.59}, -- OK
				[5] = {x = 114.62, y = 0, z = 89.93}, -- OK
				[6] = {x = 86.80, y = 0, z = 90.72}, -- OK
				[7] = {x = 94.18, y = 0, z = 82.29}, -- OK
				[8] = {x = 115.71, y = 0, z = 82.63}, -- OK
			},
			returnpos = {
				[1] = {x = 100, y = 0, z = 100}, -- OK
				[2] = {x = 100, y = 0, z = 100}, -- OK
				[3] = {x = 100, y = 0, z = 100}, -- OK
				[4] = {x = 100, y = 0, z = 100}, -- OK
				[5] = {x = 100, y = 0, z = 100}, -- OK
				[6] = {x = 100, y = 0, z = 100}, -- OK
				[7] = {x = 100, y = 0, z = 100},  -- OK
				[8] = {x = 100, y = 0, z = 100}, -- OK
			},
			timetoreturn = 30,
		},
		[2] = {
			castingid = 12881, --- Program Loop
			type = "multifixed",
			pos = {
				[1] = {x = 99.77, y = 0, z = 115.62}, -- OK
				[2] = {x = 84.69, y = 0, z = 100.31}, -- OK
				[3] = {x = 100.13, y = 0, z = 84.68}, -- OK
				[4] = {x = 115.46, y = 0, z = 99.84}, -- OK
				[5] = {x = 104, y = 0, z = 104}, -- OK
				[6] = {x = 105, y = 0, z = 96}, -- OK
				[7] = {x = 96, y = 0, z = 95},  -- OK
				[8] = {x = 95, y = 0, z = 104},	-- OK
			},
		},
		[3] = {
			castingid = 12915, --- Program Loop
			type = "multifixed",
			pos = {
				[1] = {x = 99.77, y = 0, z = 115.62}, -- OK
				[2] = {x = 84.69, y = 0, z = 100.31}, -- OK
				[3] = {x = 100.13, y = 0, z = 84.68}, -- OK
				[4] = {x = 115.46, y = 0, z = 99.84}, -- OK
				[5] = {x = 104, y = 0, z = 104}, -- OK
				[6] = {x = 105, y = 0, z = 96}, -- OK
				[7] = {x = 96, y = 0, z = 95},  -- OK
				[8] = {x = 95, y = 0, z = 104},	-- OK
			},
		},
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (Player:GetTarget() and Player:GetTarget().contentid == 7852) then if (ActionList:Get(5,26):IsReady()) then ActionList:Get(5,26):Cast(Player:GetTarget().id) end end end"},
		[5] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (Player:GetTarget() and Player:GetTarget().contentid == 7696) then if (ActionList:Get(5,26):IsReady()) then ActionList:Get(5,26):Cast(Player:GetTarget().id) end end end"},
		--[[[6] = {
			castingid = 13724, --- Rush OK
			type = "multifixed",
			pos = {
				[1] = {x = 88.25, y = 0, z = 89.03}, -- OK NW
				[2] = {x = 111.47, y = 0, z = 89.03}, -- OK NE
				[3] = {x = 88.25, y = 0, z = 89.03}, -- OK NW
				[4] = {x = 111.47, y = 0, z = 89.03}, -- OK NE
				[5] = {x = 88.25, y = 0, z = 89.03}, -- OK NW
				[6] = {x = 111.47, y = 0, z = 89.03}, -- OK NE
				[7] = {x = 88.25, y = 0, z = 89.03}, -- OK NW
				[8] = {x = 111.47, y = 0, z = 89.03}, -- OK NE
			},
		},]]
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {12907,12933,13075,13118,13119,13140,13155,1371},
	limitbreak = {
		[1] = {contentid = 7695, percent = 50, level = 1, type = "magic"},
		[2] = {contentid = 7695, percent = 50, level = 2, type = "magic"},
		[3] = {contentid = 7695, percent = 50, level = 3, type = "magic"},
	},
	tankbuster = {12909,12935,23279},
	tethers = {
		[1] = {id = 17, type = "move", priority = 1, pos = {x = 118, y = 0, z = 81} },
	},
	puddledata= {
		[1] = {castid = 12896, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},  -- Ballistic Impact Puddle
		[2] = {castid = 12927, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[3] = {castid = 14091, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[4] = {castid = 14147, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[5] = {castid = 14149, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[6] = {castid = 18652, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[7] = {castid = 18660, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[8] = {castid = 18681, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[9] = {castid = 18755, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[10] = {castid = 18804, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[11] = {castid = 23610, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
		[12] = {castid = 24334, radius= 10, duration = 10, type = "ground", desc = "puddle that appears at random points on ground"},
	},
}

return tbl