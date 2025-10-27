local tbl = {
	name = "A2N Cuff of the Father",
	dutyid = 443,
	level = 60,
	expansion = 3,
	creator = "Who.. Knows..",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=-16.47,y=26.90,z=120.59}},
		[2] = {objective = 2, pos = {x=-0.00,y=-17.95,z=38.97}},
		[3] = {objective = 3, pos = {x=0.07,y=-28.00,z=-46.07}},
		[4] = {objective = 4, pos = {x=-20.53,y=-28.00,z=-92.45}},
	},
	interacts = {
		[1] = {contentid = 2005048, priority = 1, type = "Steam-spouting Contraption"},
		[2] = {contentid = 2005427, priority = 1, type = "Steam-spouting Contraption"},
		[3] = {contentid = 475, priority = 1, type = "Loot 1"},
		[4] = {contentid = 476, priority = 1, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3757, priority = 1, type = "Gordian Soldier"},
		[2] = {contentid = 3760, priority = 1, type = "Magitek Gobwidow	G-IX"},
		[3] = {contentid = 3754, priority = 1, type = "Gordian Hardmind"},
		[4] = {contentid = 3759, priority = 1, type = "Jagd Doll"},
	},
	ignoretarget = {},
	avoidentity= {
		[1] = {contentid= 2667, radius = 10}, -- bombs
	},
	advancedavoid = {},
	overheadmarkers = {},
	puddledata= {},
}

return tbl