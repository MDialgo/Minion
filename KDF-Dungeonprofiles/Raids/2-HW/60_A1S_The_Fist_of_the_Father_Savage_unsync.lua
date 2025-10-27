local tbl = {
	name = "A1S Fist of the Father (Savage)",
	dutyid = 449,
	level = 60,
	expansion = 3,
	creator = "Hikari",
	notes = "",
	hacks = false,
	queuetype = 2,
	requeuetimer  = 30,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.00, y = -24.00, z = -150.88}},
		[2] = {objective = 2, pos = {x = 0.00, y = 12.00, z = -100.00}},
		[3] = {objective = 3, pos = {x = 0.00, y = -24.00, z = -183.46}},
	},
	interacts = {
		[1] = {contentid = 481, priority = 1, type = "Loot 1"},
		[2] = {contentid = 482, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	bossids = {3745,3747,3748},
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 3749, priority = 1, type = "Alarum"}, --Tagging in case Alarums spawn, but you shouldn't see them with 2 accounts
	},
	ignoretarget = {3746}, --Ignore Sturm Dolls on Faust
	tankgetaggro = false,
}

return tbl