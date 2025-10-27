local tbl = {
	name = "A2S Cuff of the Father (Savage)",
	dutyid = 450,
	level = 60,
	expansion = 3,
	creator = "Hikari",
	notes = "",
	hacks = false,
	queuetype = 2,
	requeuetimer  = 30,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -21.92, y = -28.00, z = -87.58}},
	},
	forcemeleerange= {3753},
	interacts = {
		[1] = {contentid = 483, priority = 1, type = "Loot 1"},
		[2] = {contentid = 484, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	bossids = {},
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 3760, priority = 1, type = "Magitek Gobwidow G-IX"},
		[2] = {contentid = 3754, priority = 2, type = "Gordian Hardhelm"},
		[3] = {contentid = 3755, priority = 3, type = "Gordian Hardmind"},
		[4] = {contentid = 3759, priority = 4, type = "Jagd Doll"},
	},
	ignoretarget = {2667}, --Ignore Bombs
	avoidentity= {
		[1] = {contentid= 2667, radius = 10}, -- bombs
	},
	tankgetaggro = false,
}

return tbl