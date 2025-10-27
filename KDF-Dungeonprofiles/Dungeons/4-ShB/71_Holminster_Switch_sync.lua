local tbl = {
	name = "Holminster Switch",
	mesh = "",
	dutyid = 837,
	level = 71,
	expansion = 5,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -15.239999771118, y = 0, z = 239.30999755859}},
		[2] = {objective = 2, pos = {x = -15.239999771118, y = 0, z = 239.30999755859}},
		[3] = {objective = 3, pos = {x = 77.709999084473, y = 0, z = -76.879997253418}},
		[4] = {objective = 4, pos = {x = 77.709999084473, y = 0, z = -76.879997253418}},
		[5] = {objective = 5, pos = {x = 133.85000610352, y = 23, z = -466.14001464844}},
		[6] = {objective = 6, pos = {x = 133.85000610352, y = 23, z = -466.14001464844}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 1207, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1203, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1204, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1208, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1205, priority = 5, type = "Loot 3"},
		[6] = {contentid = 1206, priority = 6, type = "Loot 4"},
		[7] = {contentid = 1209, priority = 7, type = "Boss 3 Loot"}, -- Black Hayate & To Fire and Sword Orchestrion Roll
	},
	bossids = {
		8299, -- Forgiven Dissonance
		8300, -- Tesleen, the Forgiven
		8301, -- Lightwarden: Philia -- Philia Card
	},
	forcemeleerange = {8300,8301,8307,8303,8304,8299,8310},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 8570, priority = 1, type = "Chain"},
	},
	tankat = {
		[1] = {contentid = 8301, desc = "tank last boss at north", frompercent = 100, pos = {x = 133.71, y = 23, z = -474.53}, topercent = 0},
	},
	advancedavoid = {
		[1] = {castingid = 15834, desc = "fierce bleating", type = "movefrontleftofenemy"},
		[2] = {castingid = 15836, desc = "fierce bleating", type = "movefrontleftofenemy"},
		[3] = {castingid = 15836, desc = "fierce bleating", type = "movefrontleftofenemy"},
		[4] = {castingid = 17232, desc = "into the light", type = "movebehind"},
		[5] = {castingid = 17052, desc = "chain down", type = "singlefixed", pos = {[1] = {x = 133.69, y = 23, z = -465.06}}},
		[6] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.API.Holminster()"},
	},
	reactions = {
		[1] = {
			cause = "return KitanoiFuncs.ScanForCast2(15826,5,2)",
			effect = "KitanoiNavigation.NavAPI.MoveTo(78.32,0,-100) KitanoiSettings.avoidingtime = Now()",
			name = "Get Out of Ice",
		},
		[2] = {
			cause = "return KitanoiFuncs.ScanForCast2(15827,5,2)",
			effect = "KitanoiNavigation.NavAPI.MoveTo(78.32,0,-100) KitanoiSettings.avoidingtime = Now()",
			name = "Get Out of Ice",
		},
		[3] = {
			cause = "return KitanoiFuncs.ScanForCaster2(15837)",
			effect = "KitanoiSettings.avoidingtime = Now()",
			name = "Update AvoidTime",
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = 8300,
			desc = "secondboss stacking",
			detectwho = "any",
			pos = {
				[1] = {x = 77.1, y = 0, z = -82.57},
				[2] = {x = 77.1, y = 0, z = -82.57},
				[3] = {x = 77.1, y = 0, z = -82.57},
				[4] = {x = 77.1, y = 0, z = -82.57},
			},
			timetoreturn = 7,
			type = "move",
		},
		[2] = {
			id = 79,
			contentid = 8300,
			desc = "secondboss 1 marker",
			detectwho = "me",
			pos = {
				[1] = {x = 82.54, y = 0, z = -100.1},
				[2] = {x = 82.54, y = 0, z = -100.1},
				[3] = {x = 82.54, y = 0, z = -100.1},
				[4] = {x = 82.54, y = 0, z = -100.1},
			},
			timetoreturn = 12,
			type = "move",
		},
		[3] = {
			id = 80,
			contentid = 8300,
			desc = "secondboss 2 marker",
			detectwho = "me",
			pos = {
				[1] = {x = 84.83, y = 0, z = -95.79},
				[2] = {x = 84.83, y = 0, z = -95.79},
				[3] = {x = 84.83, y = 0, z = -95.79},
				[4] = {x = 84.83, y = 0, z = -95.79},
			},
			timetoreturn = 12,
			type = "move",
		},
		[4] = {
			id = 81,
			contentid = 8300,
			desc = "secondboss 3 marker",
			detectwho = "me",
			pos = {
				[1] = {x = 72.28, y = 0, z = -95.65,},
				[2] = {x = 72.28, y = 0, z = -95.65,},
				[3] = {x = 72.28, y = 0, z = -95.65,},
				[4] = {x = 72.28, y = 0, z = -95.65,},
			},
			timetoreturn = 12,
			type = "move",
		},
		[5] = {
			id = 82,
			contentid = 8300,
			desc = "secondboss 4 marker",
			detectwho = "me",
			pos = {
				[1] = {x = 74.18, y = 0, z = -100.21},
				[2] = {x = 74.18, y = 0, z = -100.21},
				[3] = {x = 74.18, y = 0, z = -100.21},
				[4] = {x = 74.18, y = 0, z = -100.21},
			},
			timetoreturn = 12,
			type = "move",
		},
		[6] = {
			id = 87,
			contentid = 8300,
			desc = "last boss pendulum marker",
			detectwho = "me",
			pos = {
				[1] = {x = 133.64, y = 23, z = -483.27},
				[2] = {x = 133.64, y = 23, z = -483.27},
				[3] = {x = 133.64, y = 23, z = -483.27},
				[4] = {x = 133.64, y = 23, z = -483.27},
			},
			timetoreturn = 15,
			type = "move",
		},
	},
	excludeavoid = {15837,15841},
	puddledata = {
		[1] = {castid = 15828, desc = "second boss ice puddles", duration = 45, radius = 6},
	},
	disablemeleeavoid = {8299},
}

return tbl