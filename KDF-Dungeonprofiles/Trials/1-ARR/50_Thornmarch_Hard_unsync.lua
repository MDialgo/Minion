local tbl = {
	name = "Thornmarch (Hard)",
	mesh = "[Trial] Thornmarch",
	dutyid = 1067,
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
		[1] = {contentid = 228, priority = 1, type = "Loot"},
	},
	enemytargetdistance = 50,
	bossids = {725},
	prioritytarget = {
		[1] = {contentid = 718, priority = 4, type = "PLD"},
		[2] = {contentid = 719, priority = 3, type = "WAR"},
		[3] = {contentid = 720, priority = 2, type = "WHM"},
		[4] = {contentid = 723, priority = 5, type = "BRD"},
		[5] = {contentid = 725, priority = 1, type = "King Moogle"},
		[6] = {contentid = 721, priority = 6, type = "BLM"},
		[7] = {contentid = 724, priority = 7, type = "ROG"},
	},
	avoidentity= {},
}

return tbl