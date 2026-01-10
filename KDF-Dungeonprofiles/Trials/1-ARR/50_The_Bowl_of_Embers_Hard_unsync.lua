local tbl = {
	name = "The Bowl of Embers (Hard)",
	mesh = "Bowl of Embers",
	dutyid = 292,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 19.46, y = 0, z = -0.00}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 202, priority = 1, type = "Loot"},
		-- Ifrit Weapons
	},
	bossids = {
		1185, -- Ifrit -- Ifrit Card & (Ifrit's Horn (Synced Only))
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 1186, priority = 1, type = "Infernal Nail"},
		[2] = {contentid = 1185, priority = 2, type = "Ifrit"},
	},
	avoidentity = {},
	advancedavoid = {},
}

return tbl