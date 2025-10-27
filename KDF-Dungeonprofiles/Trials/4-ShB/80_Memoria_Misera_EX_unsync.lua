local tbl = {
	name = "Memoria Misera Ex",
	mesh = "Transmission Control",
	dutyid = 913,
	level=79,
	expansion = 5,
	creator = "Koyote#6642",
	notes = "",
	queuetype = 2,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 34, y = -24, z = -695}},
	},
	interactdistance = 40,
	interacts = {
		[1] = {contentid =1265 , priority = 1, type = "Chest"},
	},
	bossids = {},
	forcemeleerange= {},
	enemytargetdistance = 100,
	prioritytarget = {
		[1] = {contentid = 9342, priority = 1, type = "Rocks"},
		[2] = {contentid = 3819, priority = 2, type = "Turrets"},
		[3] = {contentid = 9341, priority = 3, type = "Boss"},
	},
	ignoretarget={},
	dontclearfriendlytargets = {},
	tankat = {},
	incombatinteract= {
		[1] = {interactid= "2011055;2011052", type= "interact", who = "closest", desc = "Things"},
	},
	useaction = {},
	advancedavoid = {
		[1] = {
				contentid = 19658,
				type = "multifixed",
				pos = {
					[1] = {x = 35, y = -24, z = -666},
					[2] = {x = 20, y = -24, z = -666},
					[3] = {x = 50, y = -24, z = -666},
					[4] = {x = 50, y = -24, z = -682.6},
					[5] = {x = 20, y = -24, z = -682.6},
					[6] = {x = 35, y = -24, z = -698.6},
					[7] = {x = 20, y = -24, z = -698.6},
					[8] = {x = 50, y = -24, z = -698.6},
				},
			},
		[2] = {
				contentid = 19636,
				type = "multifixed",
				pos = {
					[1] = {x = 50, y = -24, z = -682.6},
					[2] = {x = 50, y = -24, z = -682.6},
					[3] = {x = 50, y = -24, z = -682.6},
					[4] = {x = 50, y = -24, z = -682.6},
					[5] = {x = 20, y = -24, z = -682.6},
					[6] = {x = 20, y = -24, z = -682.6},
					[7] = {x = 20, y = -24, z = -682.6},
					[8] = {x = 20, y = -24, z = -682.6},
				},
			},
	},
	hasbuff = {},
	overheadmarkers = {},
}

return tbl