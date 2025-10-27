local tbl = {
	name = "The Twinning",
	mesh = "[Dungeon] The Twinning",
	dutyid = 840,
	level = 80,
	expansion = 5,
	creator = "Hikari",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 200.00, y = 317.00, z = 270.00}},
		[2] = {objective = 2, pos = {x = 200.00, y = 317.00, z = 270.00}},
		[3] = {objective = 3, pos = {x = 200.00, y = 12.00, z = 52.20}},
		[4] = {objective = 4, pos = {x = 200.00, y = 12.00, z = 52.20}},
		[5] = {objective = 5, pos = {x = 0.00, y = -848.00, z = -342.00}},
		[6] = {objective = 6, pos = {x = 0.00, y = -848.00, z = -342.00}},
	},
	interacts = {
		[1] = {priority = 1, contentid = 1151, type = "Boss 1 Loot"},
		[2] = {priority = 2, contentid = 1147, type = "Loot 1"},
		[3] = {priority = 3, contentid = 1148, type = "Loot 2"},
		[4] = {priority = 4, contentid = 1152, type = "Boss 2 Loot"},
		[5] = {priority = 5, contentid = 1149, type = "Loot 3"},
		[6] = {priority = 6, contentid = 1150, type = "Loot 4"},
		[7] = {priority = 7, contentid = 1153, type = "Boss 3 Loot"}, -- A Long Fall Orchestrion Roll
	},
	bossids = {
		8162, -- Alpha Zaghnal
		8165, -- Mithridates
		8167, -- The Tycoon
	},
	prioritytarget = {
		[1] = {contentid = 8163, priority = 1, type = "First boss adds"},
	},
	avoidentity= {
		[1] = {contentid= 2001141, radius = 10, type = "circle"},
		[2] = {contentid= 8166, radius = 7, type = "circle"},
	},
	tankat = {
		[1] = {contentid = 8162, frompercent = 100, topercent = 1, pos = {x = 200.00, y = 317.00, z = 270.00}},
	},
	useaction = {},
	advancedavoid = {
		[1] = {castingid = 15864, type = "movefrontleftofenemy"},
	},
	overheadmarkers = {
		[1] = {id = 50, contentid = "8162", desc= "spread", type = "move", detectwho = "me",
			pos = {
				[1] = {x = 194.00, y = 317.00, z = 270.00},
				[2] = {x = 194.00, y = 317.00, z = 270.00},
				[3] = {x = 194.00, y = 317.00, z = 270.00},
				[4] = {x = 194.00, y = 317.00, z = 270.00}
			}
		},
		[2] = {id = 51, contentid = "8162", desc= "spread", type = "move", detectwho = "me",
			pos = {
				[1] = {x = 206.00, y = 317.00, z = 270.00},
				[2] = {x = 206.00, y = 317.00, z = 270.00},
				[3] = {x = 206.00, y = 317.00, z = 270.00},
				[4] = {x = 206.00, y = 317.00, z = 270.00}
			}
		},
		[3] = {id = 52, contentid = "8162", desc= "spread", type = "move", detectwho = "me",
			pos = {
				[1] = {x = 200.00, y = 317.00, z = 270.00},
				[2] = {x = 200.00, y = 317.00, z = 270.00},
				[3] = {x = 200.00, y = 317.00, z = 270.00},
				[4] = {x = 200.00, y = 317.00, z = 270.00}
			}
		},
		[4] = {id = 53, contentid = "8162", desc= "spread", type = "move", detectwho = "me",
			pos = {
				[1] = {x = 200.00, y = 317.00, z = 291.00},
				[2] = {x = 200.00, y = 317.00, z = 291.00},
				[3] = {x = 200.00, y = 317.00, z = 291.00},
				[4] = {x = 200.00, y = 317.00, z = 291.00}
			}
		},
		[5] = {id = 90, contentid = "8162", desc= "spread", type = "move", detectwho = "any",
			pos = {
				[1] = {x = 192.00, y = 317.00, z = 270.00},
				[2] = {x = 208.00, y = 317.00, z = 270.00},
				[3] = {x = 192.00, y = 317.00, z = 284.00},
				[4] = {x = 208.00, y = 317.00, z = 284.00}}},
		[6] = {id = 93, contentid = "8162", desc= "stack", type = "move", detectwho = "any",
			pos = {
				[1] = {x= 200.00,y= 317.00,z= 279.00},
				[2] = {x= 200.00,y= 317.00,z= 279.00},
				[3] = {x= 200.00,y= 317.00,z= 279.00},
				[4] = {x= 200.00,y= 317.00,z= 279.00}},
			returnpos = {
				[1] = {x = 200.00, y = 317.00, z = 270.00},
				[2] = {x = 200.00, y = 317.00, z = 270.00},
				[3] = {x = 200.00, y = 317.00, z = 270.00},
				[4] = {x = 200.00, y = 317.00, z = 270.00}
			},
			timetoreturn = 2
		},
	},
}

return tbl