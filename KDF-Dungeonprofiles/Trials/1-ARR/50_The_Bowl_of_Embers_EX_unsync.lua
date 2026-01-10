local tbl = {
	name = "Ifrit Ex",
	mesh = "Bowl of Embers",
	dutyid = 295,
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
		[1] = {contentid = 226, priority = 1, type = "Loot"},
		-- Inferno Bracelets, Inferno Horn, Aithon Whistle, Nightmare Whistle & Faded Copy of Primal Judgment
	},
	bossids = {
		1185, -- Ifrit -- Ifrit Card
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