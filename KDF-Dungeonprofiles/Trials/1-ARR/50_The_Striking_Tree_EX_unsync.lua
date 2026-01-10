local tbl = {
	name = "Ramuh Ex",
	mesh = "The Striking Tree",
	dutyid = 375,
	level = 50,
	expansion = 2,
	creator = "Minnu",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 75, z = -7.67}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 340, priority = 1, type = "Loot"},
		-- Thunder Weapons, Levin Orb, Large Levin Orb, Markab Whistle & Faded Copy of Thunder Rolls
	},
	bossids = {
		2832, -- Ramuh -- Ramuh Card
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 2833, priority = 1, type = "Grey Arbiter"},
		[2] = {contentid = 2832, priority = 2, type = "Ramuh"},
	},
	avoidentity = {},
	advancedavoid = {},
}

return tbl