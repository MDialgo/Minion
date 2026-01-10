local tbl = {
	name = "The Final Steps of Faith",
	mesh = "Steps of Faith - Nidhogg HM",
	dutyid = 559,
	level = 60,
	expansion = 3,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.94, y = -0.00, z = -15.86}},
	},
	interactdistance = 50,
	interacts = {},
	bossids = {
		3458, -- Nidhogg -- Nidhogg Card
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 4960, priority = 1, type = "Adds"},
		[2] = {contentid = 4961, priority = 2, type = "Adds"},
		[3] = {contentid = 4959, priority = 3, type = "Adds"},
	},
	avoidentity = {},
	advancedavoid = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "3458",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = 7.51, y = -0.00, z = 0.97},
				[2] = {x = 7.51, y = -0.00, z = 0.97},
				[3] = {x = 7.51, y = -0.00, z = 0.97},
				[4] = {x = 7.51, y = -0.00, z = 0.97}
			},
			timetoreturn = 12
		},
		[2] = {
			id = 76,
			contentid = "3458",
			desc= "spread",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = 0.02, y = -0.00, z = 7.41},
				[2] = {x = 0.18, y = -0.00, z = -8.06},
				[3] = {x = 9.8, y = -0.00, z = 0.18},
				[4] = {x = -10.38, y = -0.00, z = -0.18}
			},
			returnpos = {
				[1] = {x = 0.02, y = -0.00, z = 7.41},
				[2] = {x = 0.18, y = -0.00, z = -8.06},
				[3] = {x = 9.8, y = -0.00, z = 0.18},
				[4] = {x = -10.38, y = -0.00, z = -0.18}
			},
			timetoreturn = 5
		},
	},
}

return tbl