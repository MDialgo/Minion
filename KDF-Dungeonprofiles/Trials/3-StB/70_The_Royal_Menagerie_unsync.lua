local tbl = {
	name = "The Royal Menagerie",
	mesh = "The Royal Menagerie",
	dutyid = 679,
	level = 70,
	expansion = 4,
	creator = "Rinn",
	notes = "Meshes Required\nTidal Wave RNG at the start, but let it run until it finishes it one time for the MSQ",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 12.97, y = -380, z = -0.65}},
	},
	interacts = {},
	bossids = {
		5640, -- Shinryu -- Shinryu Card
	},
	enemytargetdistance = 70,
	prioritytarget = {
		[1] = {contentid = 5789, priority = 1, type = "Tail"},
	},
	tankat = {},
	advancedavoid = {
		[1] = {
			castingid = 8075, --tidal wave basically random between right / left / behind (chose a corner behind <> left)
			type = "multifixed",
			pos = {
				[1] = {x = -17.85, y = -380, z = -17.83},
				[2] = {x = -17.85, y = -380, z = -17.83},
				[3] = {x = -17.85, y = -380, z = -17.83},
				[4] = {x = -17.85, y = -380, z = -17.83},
				[5] = {x = -17.85, y = -380, z = -17.83},
				[6] = {x = -17.85, y = -380, z = -17.83},
				[7] = {x = -17.85, y = -380, z = -17.83},
				[8] = {x = -17.85, y = -380, z = -17.83},
			},
		},
		[2] = {
			castingid = 8086, --cocoon aoe
			type = "multifixed",
			pos = {
				[1] = {x = 0.56, y = -380, z = 16.94},
				[2] = {x = 0.56, y = -380, z = 16.94},
				[3] = {x = 0.56, y = -380, z = 16.94},
				[4] = {x = 0.56, y = -380, z = 16.94},
				[5] = {x = 0.56, y = -380, z = 16.94},
				[6] = {x = 0.56, y = -380, z = 16.94},
				[7] = {x = 0.56, y = -380, z = 16.94},
				[8] = {x = 0.56, y = -380, z = 16.94},
			},
		},
		[3] = {
			castingid = 8080, --Aerial Blast
			type = "multifixed",
			pos = {
				[1] = {x = -0.22, y = 620, z = -0.66},
				[2] = {x = -0.22, y = 620, z = -0.66},
				[3] = {x = -0.22, y = 620, z = -0.66},
				[4] = {x = -0.22, y = 620, z = -0.66},
				[5] = {x = -0.22, y = 620, z = -0.66},
				[6] = {x = -0.22, y = 620, z = -0.66},
				[7] = {x = -0.22, y = 620, z = -0.66},
				[8] = {x = -0.22, y = 620, z = -0.66},
			},
		},
		[4] = {
			castingid = 8100, --Akh Morn
			type = "multifixed",
			pos = {
				[1] = {x = 0.56, y = -380, z = -7.55},
				[2] = {x = -8.41, y = -380, z = -7.67},
				[3] = {x = -7.98, y = -380, z = 0.73},
				[4] = {x = -8.46, y = -380, z = 7.91},
				[5] = {x = -0.19, y = -380, z = 7.47},
				[6] = {x = 7.69, y = -380, z = 7.85},
				[7] = {x = 7.5, y = -380, z = -0.11},
				[8] = {x = 7.37, y = -380, z = -7.9},
			},
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "5640",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = -0.22, y = 620, z = -0.66},
				[2] = {x = -0.22, y = 620, z = -0.66},
				[3] = {x = -0.22, y = 620, z = -0.66},
				[4] = {x = -0.22, y = 620, z = -0.66},
				[5] = {x = -0.22, y = 620, z = -0.66},
				[6] = {x = -0.22, y = 620, z = -0.66},
				[7] = {x = -0.22, y = 620, z = -0.66},
				[8] = {x = -0.22, y = 620, z = -0.66},
			}, --all move to same point to stack
			timetoreturn = 5,
		},
	},
	excludeavoid = {},
}

return tbl