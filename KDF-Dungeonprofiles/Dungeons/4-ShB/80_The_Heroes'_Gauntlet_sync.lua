local tbl = {
	name = "The Heroes' Gauntlet",
	mesh = "[HM] - The Heroes' Gauntlet",
	dutyid = 916,
	level = 80,
	expansion = 5,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -679.40997314453, y = -23.989999771118, z = 445.0299987793}},
		[2] = {objective = 2, pos = {x = -679.40997314453, y = -23.989999771118, z = 445.0299987793}},
		[3] = {objective = 3, pos = {x = -449.57998657227, y = -1.1900000572205, z = -529.89001464844}},
		[4] = {objective = 4, pos = {x = -449.57998657227, y = -1.1900000572205, z = -529.89001464844}},
		[5] = {objective = 5, pos = {x = 749.80999755859, y = 8, z = 463.35998535156}},
		[6] = {objective = 6, pos = {x = 749.80999755859, y = 8, z = 463.35998535156}},
	},
	interacts = {
		[1] = {contentid = 1283, priority = 1, req = {complete = true, objective = 2}, type = "Boss 1 Loot"},
		[2] = {contentid = 2011119, priority = 2, req = {complete = true, objective = 2}, type = "Fae Portal"},
		[3] = {contentid = 1279, priority = 3, req = {complete = true, objective = 2}, type = "Loot 1"},
		[4] = {contentid = 1280, priority = 4, req = {complete = true, objective = 2}, type = "Loot 2"},
		[5] = {contentid = 1284, priority = 5, req = {complete = true, objective = 2}, type = "Boss 2 Loot"},
		[6] = {contentid = 1281, priority = 6, req = {complete = true, objective = 2}, type = "Loot 3"},
		[7] = {contentid = 1282, priority = 7, req = {complete = true, objective = 2}, type = "Loot 4"},
		[8] = {contentid = 1285, priority = 8, type = "Boss 3 Loot"}, -- Ephemeral Necromancer & Where All Roads Lead Orchestrion Roll
	},
	bossids = {
		9505, -- Spectral Thief
		9508, -- Spectral Necromancer
		9511, -- Spectral Berserker
	},
	forcemeleerange = {9511,9508},
	enemytargetdistance = 50,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 9482, priority = 1, type = "Spectral White Mage"},
	},
	tankat = {},
	advancedavoid = {
		[1] = {
			castingid = 20436,
			desc = "first boss shadowdash",
			pos = {
				[1] = {x = -680.39, y = -23.99, z = 448.36}
			},
			type = "singlefixed"
		},
		[2] = {
			castingid = 20994,
			desc = "last boss crater knockback",
			pos = {
				[1] = {x = 750.02, y = 8, z = 481.99}
			},
			type = "singlefixed"
		},
		[3] = {
			castingid = 20998,
			casttime = 1,
			delay = 1,
			desc = "last boss blue pool",
			distfrompos = 4,
			entitylist = "contentid=9511,maxdistance=30",
			pos = {x = 735.87, y = 8, z = 481.65},
			targetable = false,
			type = "movetoentity",
		},
		[4] = {
			castingid = 20998,
			casttime = 1,
			delay = 1,
			desc = "last boss blue pool",
			distfrompos = 4,
			entitylist = "contentid=9511,maxdistance=30",
			pos = {x = 763.28, y = 8, z = 482.2},
			targetable = false,
			type = "movetoentity",
		},
	},
	hasbuff = {
		[1] = {buffid = 2309, pos = {
				[1] = {x = 749.9, y = 8, z = 482.75},
				[2] = {x = 749.9, y = 8, z = 482.75},
				[3] = {x = 749.9, y = 8, z = 482.75},
				[4] = {x = 749.9, y = 8, z = 482.75},
			},
			stacksrequired = 1,
			type = "move",
		},
	},
	overheadmarkers = {
		[1] = {
			contentid = "9511",
			desc = "last boss rocks",
			detectwho = "me",
			id = 229,
			pos = {
				[1] = {x = 744.84, y = 8, z = 496.8},
				[2] = {x = 744.35, y = 8, z = 473.68},
				[3] = {x = 753.86, y = 8, z = 466.57},
				[4] = {x = 755.92, y = 8, z = 489.49},
			},
			timetoreturn = 20,
			type = "move",
		},
	},
	tethers = {
		[1] = {
			desc = "First Boss Jumps",
			duration = 6,
			id = 12,
			radius = 16,
			type = "avoid",
			who = "entityone",
		},
		[2] = {
			desc = "First Boss jumps",
			duration = 6,
			id = 12,
			radius = 16,
			type = "avoid",
			who = "entitytwo",
		},
		[3] = {
			desc = "Second Boss normal tether",
			id = 17,
			pos = {
				[1] = {
					[1] = {x = -450.89, y = 0, z = -531.97},
					[2] = {x = -458.9, y = 1.19, z = -531.26},
					[3] = {x = -441.77, y = 0, z = -532.75},
				},
				[2] = {
					[1] = {x = -450.89, y = 0, z = -531.97},
					[2] = {x = -458.9, y = 1.19, z = -531.26},
					[3] = {x = -441.77, y = 0, z = -532.75},
				},
				[3] = {
					[1] = {x = -450.89, y = 0, z = -531.97},
					[2] = {x = -458.9, y = 1.19, z = -531.26},
					[3] = {x = -441.77, y = 0, z = -532.75},
				},
				[4] = {
					[1] = {x = -450.89, y = 0, z = -531.97},
					[2] = {x = -458.9, y = 1.19, z = -531.26},
					[3] = {x = -441.77, y = 0, z = -532.75},
				},
			},
			priority = 1,
			type = "move",
		},
		[4] = {
			desc = "Second Boss red tether",
			id = 79,
			pos = {
				[1] = {
					[1] = {x = -462.99, y = -2.38, z = -544.31},
					[2] = {x = -436.37, y = 2.38, z = -543.47},
				},
				[2] = {
					[1] = {x = -467.53, y = 2.38, z = -537.02},
					[2] = {x = -431.78, y = 0, z = -535.72},
				},
				[3] = {
					[1] = {x = -467.04, y = -1.19, z = -525.08},
					[2] = {x = -431.71, y = -1.19, z = -527.03},
				},
				[4] = {
					[1] = {x = -463.28, y = -1.19, z = -517.52},
					[2] = {x = -435.81, y = 0, z = -518.89},
				},
			},
			priority = 2,
			type = "move",
		},
	},
	excludeavoid = {20994,20995,20996,21000,20999,21069,21070,20317,200996,20994,20998},
	limitbreak = {
		[1] = {contentid = 9505, level = 1, percent = 15, type = "melee"},
		[2] = {contentid = 9511, level = 2, percent = 15, type = "melee"},
	},
	puddledata = {
		[1] = {castid = 20388, desc = "Puddle left at second boss", duration = 30, radius = 10},
	},
}

return tbl