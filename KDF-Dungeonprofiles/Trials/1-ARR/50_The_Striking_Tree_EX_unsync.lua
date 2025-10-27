local tbl = {
	name = "Ramuh Ex",
	mesh = "The Striking Tree",
	dutyid = 375,
	level = 50,
	expansion = 2,
	creator = "Minnu",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=0, y= 75, z= -7.67}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 340, priority = 1, type = "Loot"},
	},
	enemytargetdistance = 50,
	bossids = {2832},
	prioritytarget = {
		[1] = {contentid = 2833, priority = 1, type = "Grey Arbiter"},
		[2] = {contentid = 2832, priority = 2, type = "Ramuh"},
	},
	avoidentity= {},
	advancedavoid = {},
}

return tbl