local tbl = {
	name = "The Striking Tree (Hard)",
	mesh = "The Striking Tree",
	dutyid = 374,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 0.00, y= 75.09, z= 0}},
	},
	interactdistance = 50,
	interacts = {},
	enemytargetdistance = 50,
	bossids = {2833},
	prioritytarget = {
		[1] = {contentid = 2833, priority = 1, type = "Grey Arbiter"},
		[2] = {contentid = 2832, priority = 2, type = "Ramuh"},
	},
	avoidentity= {},
	advancedavoid = {},
--	excludeavoid = {2277,2282},
}

return tbl