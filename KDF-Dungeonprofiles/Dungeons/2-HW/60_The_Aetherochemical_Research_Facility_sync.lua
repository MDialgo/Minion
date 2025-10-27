local tbl = {
	name = "The Aetherochemical Research Facility",
	mesh = "[Dungeon] Aetherochemical Research Facility v2",
	dutyid = 1110,
	level = 60,
	expansion = 3,
	creator = "Mist#4283",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -94.25, y = 395.07, z = -295.48}}, -- Analysis and Proving
		[2] = {objective = 2, pos = {x = 253.91, y = 225.20, z = 272.05 }}, -- Bioweapon Research
		[3] = {objective = 3, pos = {x = 253.91, y = 225.20, z = 272.05 }}, -- Harmachis
		[4] = {objective = 4, pos = {x = 227.29, y = -96.22, z = -187.32 }}, -- All opposition
		[5] = {objective = 5, pos = {x = 230.08, y = -456.32, z = 71.98 }}, -- Ascian prime
	},
	interacts = {
		[1] = {contentid = 2005307, priority = 1, type = "Lift Terminal 1"},
		[2] = {contentid = 2005308, priority = 2, type = "Lift Terminal 2"},
		[3] = {contentid = 2005309, priority = 3, type = "Lift Terminal 3"},
	},
	bossids = {
			3818, -- Regula Van Hydrus
			3821, -- Harmachis
			3822, -- Igeyorhm
			2143, -- Lahabrea
			3823, -- Ascian Prime -- Faded Copy of Imagination
	},
	forcemeleerange = {
		3818, -- Regula
		3821, -- Harmachis
	},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3825, priority = 1, type = "Clockwork Hunter"},
		[2] = {contentid = 3826, priority = 2, type = "Clockwork Avenger"},
		[3] = {contentid = 4390, priority = 3, type = "Enforcement Droid 2.0"},
		[4] = {contentid = 3830, priority = 1, type = "Bioculture Node"},
		[5] = {contentid = 3838, priority = 1, type = "Cloned Conjurer"},
		[6] = {contentid = 4384, priority = 1, type = "Firesphere"},
		[7] = {contentid = 4383, priority = 2, type = "Blizzardsphere"},
		[8] = {contentid = 3837, priority = 1, type = "Monitoring Drone"},
		[9] = {contentid = 4337, priority = 11, type = "Scrambled Iron Giant"},
		[10] = {contentid = 3819, priority = 1, type = "Magitek Turret I"},
		[11] = {contentid = 3820, priority = 2, type = "Magitek Turret II"},
	},
	avoidentity = {
		[1] = {
			contentid = 4382, -- Chaosphere
			radius = 8,
			type = "circle",
		},
	},
	tankat = {
		[1] = {
			contentid = 3821, -- Harmachis
			frompercent = 100,
			topercent = 0,
			pos = {x = 256.55, y = 225.20, z = 272.33},
		},
		[2] = {
			contentid = 3823, -- Ascian Prime
			frompercent = 100,
			topercent = 0,
			pos = {x = 229.72, y = -456.33, z = 72.72},
		},
	},
	advancedavoid = {
		[1] = {
			castingid = 4357, -- Universal Manipulation
			type = "movetoentity",
			entitylist = "contentid=3293",
			targetable = false,
		},
		[2] = {castingid = 31906, type = "multifixed",
			pos = {
				[1] = {x = 229.72, y = -456.33, z = 72.72},
				[2] = {x = 229.72, y = -456.33, z = 72.72},
				[3] = {x = 229.72, y = -456.33, z = 72.72},
				[4] = {x = 229.72, y = -456.33, z = 72.72}
			}
		},
	},
	hasbuff = {
		[1] = {
			buffid = 769, -- Burning Chains
			type = "move",
			pos = {
				[1] = {x = 216.98, y = -456.46, z = 90.92},
				[2] = {x = 216.36, y = -456.46, z = 69.96},
				[3] = {x = 241.72, y = -456.46, z = 69.47},
				[4] = {x = 242.62, y = -456.46, z = 87.88},
			},
		}
	},
	overheadmarkers = {
		[1] = {
			id = 58, -- donut orb thing
			contentid = "3823", -- Ascian Prime
			type = "move",
			detectwho = "any",
			pos = {
				[1] = { x = 232.65, y = -456.40, z = 78.20 },
				[2] = { x = 232.65, y = -456.40, z = 78.20 },
				[3] = { x = 232.65, y = -456.40, z = 78.20 },
				[4] = { x = 232.65, y = -456.40, z = 78.20 },
			},
			timetoreturn = 5,
		},
		[2] = {
			id = 161,
			contentid = "3823", -- Ascian Prime
			type = "move",
			desc = "stack",
			detectwho = "any",
			pos = {
				[1] = { x = 232.65, y = -456.40, z = 78.20 },
				[2] = { x = 232.65, y = -456.40, z = 78.20 },
				[3] = { x = 232.65, y = -456.40, z = 78.20 },
				[4] = { x = 232.65, y = -456.40, z = 78.20 },
			},
			timetoreturn = 5,
		},
		[3] = {
			id = 384,
			contentid = "3823", -- Ascian Prime
			type = "move",
			desc = "stack",
			detectwho = "any",
			pos = {
				[1] = { x = 232.65, y = -456.40, z = 78.20 },
				[2] = { x = 232.65, y = -456.40, z = 78.20 },
				[3] = { x = 232.65, y = -456.40, z = 78.20 },
				[4] = { x = 232.65, y = -456.40, z = 78.20 },
			},
			timetoreturn = 8,
		},
		[4] = {
			id = 139,
			contentid = "3823", -- Ascian Prime
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 224.21, y = -456.46, z = 85.20},
				[2] = {x = 225.01, y = -456.46, z = 71.07},
				[3] = {x = 236.96, y = -456.46, z = 71.75},
				[4] = {x = 238.65, y = -456.46, z = 84.59},
			},
		},
		[5] = {
			id = 97,
			contentid = "3823", -- Ascian Prime
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 230.01, y = -456.46, z = 79.03},
				[2] = {x = 230.01, y = -456.46, z = 79.03},
				[3] = {x = 230.01, y = -456.46, z = 79.03},
				[4] = {x = 230.01, y = -456.46, z = 79.03}
			},
			timetoreturn = 2,
		},
	},
	tethers = {
		[1] = {id = 9, type = "move", priority = 1,
			pos = {
				[1] = {[1] = {x = 247.99, y = -456.46, z = 87.64}},
				[2] = {[1] = {x = 216.85, y = -456.46, z = 94.14}},
				[3] = {[1] = {x = 214.93, y = -456.46, z = 65.79}},
				[4] = {[1] = {x = 239.89, y = -456.46, z = 61.39}}
			},
			desc = "Ascian Prime Burning Chains"},
	},
}

return tbl