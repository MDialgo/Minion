local tbl = {
	name = "The Chrysalis",
	mesh = "The Chrysalis",
	dutyid = 426,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = -0, z = -10}},
	},
	interactdistance = 50,
	interacts = {},
	bossids = {
		3287, -- Nabriales
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3293, priority = 1, type = "Aetherial Tear"},
	},
	avoidentity = {
--		[1] = {contentid= 3289, radius = 5},
--		[2] = {contentid= 3290, radius = 5},
--		[3] = {contentid= 3291, radius = 5},
	},
	excludeavoid = {3434},
}

return tbl