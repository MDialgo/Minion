local tbl = {
	name = "Thornmarch EX",
	mesh = "[Trial] Thornmarch",
	dutyid = 364,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 0, y= 0, z= -10}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 299, priority = 1, type = "Loot"},
	},
	enemytargetdistance = 50,
	bossids = {2752},
	prioritytarget = {
		[1] = {contentid = 718, priority = 3, type = "PLD"},
		[2] = {contentid = 719, priority = 2, type = "WAR"},
		[3] = {contentid = 720, priority = 1, type = "WHM"},
		[4] = {contentid = 723, priority = 4, type = "BRD"},
		[5] = {contentid = 721, priority = 7, type = "ARC"},
		[6] = {contentid = 722, priority = 5, type = "BLM"},
		[7] = {contentid = 724, priority = 6, type = "ROG"},
	},
	avoidentity= {},
}

return tbl