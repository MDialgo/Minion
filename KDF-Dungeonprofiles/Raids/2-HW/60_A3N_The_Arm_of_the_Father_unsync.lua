local tbl = {
	name = "A3N Arm of the Father",
	dutyid = 444,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=58.01,y=-8.80,z=-63.39}},
		[2] = {objective = 2, pos = {x=58.01,y=-8.80,z=-63.39}},
		[3] = {objective = 3, pos = {x=58.01,y=-8.80,z=-63.39}},
	},
	interacts = {
		[1] = {contentid = 477, priority = 1, type = "Loot 1"},
		[2] = {contentid = 478, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3769, priority = 1, type = "Piston Lubricant"},
		[2] = {contentid = 3770, priority = 2, type = "Gear Lubricant"},
	},
	advancedavoid = {
		[1] = {castingid = 3831, type = "movebehind"},
	},
	overheadmarkers = {},
	tethers = {},
	puddledata= {},
}

return tbl