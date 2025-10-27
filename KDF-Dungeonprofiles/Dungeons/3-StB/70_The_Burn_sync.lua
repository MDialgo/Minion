local tbl = {
	name = "The Burn",
	mesh = "[Dungeon] The Burn",
	dutyid = 1173,
	level = 70,
	expansion = 4,
	creator = "Koyote/Rinn",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 174.63275146484, y = 12.999998092651, z = 193.92674255371}}, -- Boss 1
		[2] = {objective = 2, pos = {x = 53.478225708008, y = 19.999959945679, z = 106.37311553955}},
		[3] = {objective = 3, pos = {x = -0.2980694770813, y = 34.201377868652, z = -60.710090637207}}, --  Boss 2
		[4] = {objective = 4, pos = {x = -157.51983642578, y = 25.33126449585, z = -261.34329223633}},
		[5] = {objective = 5, pos = {x = -299.29748535156, y = 9.9999980926514, z = -384.60586547852}}, -- Boss 3
		[6] = {objective = 6, pos = {x = -300.05, y = 10.00, z = -416.88}},
	},
	interacts = {
		[1] = {contentid = 1068, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1064, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1065, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1069, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1066, priority = 5, type = "Loot 3"},
		[6] = {contentid = 1067, priority = 6, type = "Loot 4"},
		[7] = {contentid = 1070, priority = 7, type = "Boss 3 Loot"}, -- Orchestrion
		},
	bossids = {
		7667, -- Hedetet
		7669, -- Defective Drone
		7672, -- Mist Dragon
	},
	forcemeleerange= {7667,7669,7672},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 7673, priority = 1, type = "Adds"},
		[2] = {contentid = 7669, priority = 1, type = "Adds"},
		[3] = {contentid = 7674, priority = 1, type = "Ice block"},
	},
	tankat= {
		[1] = {contentid = 7667, frompercent = 100, topercent = 1, pos = {x = 165.0132598877, y = 12.999998092651, z = 169.91905212402}, desc = "Tank at this pos from 100-1%"},
		[2] = {contentid = 7669, frompercent = 100, topercent = 1, pos = {x = -0.30772671103477, y = 34.20138168335, z = -68.731132507324}, desc = "Tank at this pos from 100-1%"},
		[3] = {contentid = 7672, frompercent = 100, topercent = 1, pos = {x = -300.05, y = 10, z = -416.88}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {
		[1] = {
			castingid = 12609,  -- Cold Fog --
			type = "multifixed",
			pos = {
				[1] = {x = -289.20245361, y = 10, z = -385.86770630},
				[2] = {x = -305.41229370, y = 10, z = -376.50245361},
				[3] = {x = -314.77754639, y = 10, z = -392.71229370},
				[4] = {x = -298.56770630, y = 10, z = -402.07754639},
			},
		},
		[2] = {
			castingid = 12610,  -- Cold Fog --
			type = "multifixed",
			pos = {
				[1] = {x = -289.20245361, y = 10, z = -385.86770630},
				[2] = {x = -305.41229370, y = 10, z = -376.50245361},
				[3] = {x = -314.77754639, y = 10, z = -392.71229370},
				[4] = {x = -298.56770630, y = 10, z = -402.07754639},
			},
		},
		[3] = {
			castingid = 23267,  -- Cold Fog --
			type = "multifixed",
			pos = {
				[1] = {x = -289.20245361, y = 10, z = -385.86770630},
				[2] = {x = -305.41229370, y = 10, z = -376.50245361},
				[3] = {x = -314.77754639, y = 10, z = -392.71229370},
				[4] = {x = -298.56770630, y = 10, z = -402.07754639},
			},
		},
		[4] = {
			castingid = 12618,  -- Touchdown --
			type = "setdistance",
			dist = 10,
		},
	},
	hasbuff = {
		[1] = {type = "move", buffid = 285, pos = {x=-300.58,y=10.00,z=-403.89}}
	},
	overheadmarkers = {
		[1] = {
			id = 26,
			contentid = "7672",
			desc= "move puddle on the side",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = -280.66, y = 10.00, z = -402.01},
				[2] = {x = -280.66, y = 10.00, z = -402.01},
				[3] = {x = -280.66, y = 10.00, z = -402.01},
				[4] = {x = -280.66, y = 10.00, z = -402.01},
			},
			returnpos = {
				[1] = {x = -301.99, y = 10.00, z = -389.29},
				[2] = {x = -301.99, y = 10.00, z = -389.29},
				[3] = {x = -301.99, y = 10.00, z = -389.29},
				[4] = {x = -301.99, y = 10.00, z = -389.29},
			},
			timetoreturn = 5
		},
		[2] = {
			id = 96,
			contentid = "7667",
			desc= "Move to not stack the spikes",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 175.25, y = 13.00, z = 189.06},
				[2] = {x = 163.42, y = 13.00, z = 179.03},
				[3] = {x = 174.37, y = 13.00, z = 169.39},
				[4] = {x = 182.16, y = 13.00, z = 178.60},
			},
		},
	},
}

return tbl