local tbl = {
	name = "Syrcus Tower",
	mesh = "[Raid] Syrcus Tower 2",
	dutyid = 372,
	level = 50,
	expansion = 2,
	creator = "Rinn/Koyote",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.02, y = -700, z = 35.51}},
		[2] = {objective = 2, pos = {x = 0, y = -590, z = -192.15}},
		[3] = {objective = 3, pos = {x = -6.62, y = -399.98, z = -199.73}},
		[4] = {objective = 4, pos = {x = -0.23, y = 0, z = -208.11}},
		[5] = {objective = 5, pos = {x = -0.25, y = 200.02, z = -204.27}},
		[6] = {objective = 6, pos = {x = 0, y = 600, z = -200}},
		[7] = {objective = 7, pos = {x = -400.02, y = 500, z = -200}},
	},
	forcemeleerange= {},
	interactdistance = 25,
	interacts = {
--	A
		[1] = {contentid =319 , priority = 1, type = "Chest 1"},
		[2] = {contentid =320 , priority = 1, type = "Chest 2"},
		[3] = {contentid =321 , priority = 1, type = "Chest 3"},
		[4] = {contentid =322 , priority = 1, type = "Chest 4"},
--	B
		[5] = {contentid =323 , priority = 1, type = "Chest 1"},
		[6] = {contentid =324 , priority = 1, type = "Chest 2"},
		[7] = {contentid =325 , priority = 1, type = "Chest 3"},
		[8] = {contentid =326 , priority = 1, type = "Chest 4"},
--	C
		[9] = {contentid =327 , priority = 1, type = "Chest 1"},
		[10] = {contentid =328 , priority = 1, type = "Chest 2"},
		[11] = {contentid =329 , priority = 1, type = "Chest 3"},
		[12] = {contentid =330 , priority = 1, type = "Chest 4"},
	},
	dontclearfriendlytargets = {},
	enemytargetdistance = 50,
	bossids = {2815,2821,2824},
	prioritytarget = {
		[1] = {contentid = 2823, priority = 3, type = "meteor 1 xande"},
		[2] = {contentid = 2822, priority = 4, type = "meteor 2 xande"},
		[3] = {contentid = 2886, priority = 1, type = "kukum amon"},
		[4] = {contentid = 2886, priority = 2, type = "kichiknebik amon"},
	},
	tankat = {},
	useaction = {},
	advancedavoid = {
--	one of the 2 is the real casting id for this fight ^^
		[1] = {castingid = 2441, type = "los", args = {entityone = 2821, entitytwo = 2820, dist = 10}},
		[2] = {castingid = 11063, type = "los", args = {entityone = 2821, entitytwo = 2820, dist = 10}},
	},
	hasbuff = {},
--	A -394.45 500.03 -191.94
--	B -397.54 500.02 -206.26
--	C -407.16 500.00 -199.09
	overheadmarkers = {
		[1] = {id = 28,
			contentid = "2824",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos ={
				[1] = {x=-400.02,y=500,z=-200},
				[2] = {x=-400.02,y=500,z=-200},
				[3] = {x=-400.02,y=500,z=-200},
				[5] = {x=-400.02,y=500,z=-200},
				[6] = {x=-400.02,y=500,z=-200},
				[7] = {x=-400.02,y=500,z=-200},
				[8] = {x=-400.02,y=500,z=-200},
				},
			timetoreturn = 5},
		},
}

return tbl