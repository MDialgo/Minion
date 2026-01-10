local tbl = {
	name = "The Akh Afah Amphitheatre (Hard)",
	mesh = "Akh Afah Amphitheatre",
	dutyid = 377,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.15, y = 0.00, z = -8.82}},
	},
	interactdistance = 50,
	interacts = {},
	bossids = {
		2994, -- Shiva -- Shiva Card & (Ice Tear (Synced Only))
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 2995, priority = 1, type = "Ice Soldier"},
	},
	avoidentity = {},
	advancedavoid = {},
}

return tbl