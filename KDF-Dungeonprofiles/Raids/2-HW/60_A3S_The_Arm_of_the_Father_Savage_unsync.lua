local tbl = {
	name = "A3S Arm of the Father (Savage)",
	dutyid = 451,
	level = 60,
	expansion = 3,
	creator = "Hikari",
	notes = "",
	hacks = false,
	queuetype = 2,
	requeuetimer  = 30,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 58.00, y = -9.00, z = -70.47}},
	},
	forcemeleerange= {3765},
	interacts = {
		[1] = {contentid = 485, priority = 1, type = "Loot 1"},
		[2] = {contentid = 486, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	bossids = {3765},
	prioritytargetdistance = 30,
	ignoretarget = {3766}, --Ignore Liquid Hand
	avoidentity= {
		[1] = {contentid = 2005400, radius = 10}, --Cascade Puddles
	},
	tankat = {
		[1] = {contentid = 3765, frompercent = 100, topercent = 1, pos = {x = 58.00,y = -9.00,z = -62.82}},
	},
	advancedavoid = {
		[1] = {castingid = 3847, type = "singlefixed", pos = {[1] = {x = 58.00,y = -9.00,z = -62.82}}}, --Go Middle for Wash Away
	},
	tankgetaggro = false,
}

return tbl