local tbl = {
	name = "The Singularity Reactor",
	mesh = "Singularity Reactor",
	dutyid = 437,
	level = 60,
	expansion = 3,
	creator = "Rinn",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {0.00, y= 0.00, z= 0.4}},
	},
	interactdistance = 50,
	interacts = {},
	enemytargetdistance = 50,
	bossids = {3622},
	prioritytarget = {
		[1] = {contentid = 3641, priority = 1, type = "Meteor"},
	},
	avoidentity= {},
	advancedavoid = {},
	excludeavoid = {4219,4221,4220,4218},
}

return tbl