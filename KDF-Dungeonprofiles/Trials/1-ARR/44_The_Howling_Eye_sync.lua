local tbl = {
	name = "The Howling Eye",
	mesh = "The Howling Eye",
	dutyid = 1047,
	level = 44,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 1.14, y = -2.03, z = -18.00}},
	},
	interactdistance = 50,
	interacts = {},
	bossids = {
		1644, -- Garuda
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 1644, priority = 3, type = "Garuda"},
		[2] = {contentid = 1645, priority = 1, type = "Suparna"},
		[3] = {contentid = 1646, priority = 2, type = "Chirada"},
	},
	ignoretarget = {1647,1648},
	avoidentity = {},
	advancedavoid = {},
}

return tbl