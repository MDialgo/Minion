local tbl = {
	name = "The Whorleater (Hard)",
	mesh = "The Whorleater",
	dutyid = 281,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.03, y = 0.01, z = -19.64}},
	},
	interactdistance = 50,
	interacts = {},
	bossids = {
		2550, -- Leviathan -- Leviathan Card & (Leviathan's Barb (Synced Only))
		2551, -- Leviathan's Tail
	},
	enemytargetdistance = 50,
	prioritytarget = {
--		[1] = {contentid = 2550, priority = 1, type = "Head"},
--		[2] = {contentid = 2551, priority = 1, type = "Tail"},
	},
	avoidentity = {},
	advancedavoid = {},
}

return tbl