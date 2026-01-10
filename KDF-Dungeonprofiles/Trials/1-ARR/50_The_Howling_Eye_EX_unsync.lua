local tbl = {
	name = "Garuda Ex",
	mesh = "The Howling Eye",
	dutyid = 297,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 1.14, y = -2.03, z = -18.00}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 225, priority = 1, type = "Loot"},
		-- Vortex Rings, Vortex Feather, Xanthos Whistle, Nightmare Whistle & Faded Copy of Fallen Angel
	},
	bossids = {
		1644, -- Garuda -- Garuda Card
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