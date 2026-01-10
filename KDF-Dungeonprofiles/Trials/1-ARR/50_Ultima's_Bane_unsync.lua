local tbl = {
	name = "Ultima's Bane",
	mesh = "Porta Decumana",
	dutyid = 348,
	level = 50,
	expansion = 2,
	creator = "Koyote",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0, z = 3}},
	},
	interacts = {
		[1] = {contentid = 229, priority = 2, type = "Loot"},
		-- Ultima Necklaces, Rings & Faded Copy of The Maker's Ruin
	},
	bossids = {
		2137, -- The Ultima Weapon -- Ultima Weapon Card
	},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 2137, priority = 1, type = "Ultima"},
	},
	tankat= {
		[1] = {contentid = 2137, frompercent = 100, topercent = 0, pos = {x = 0, y = 0, z = 0}, desc = "tank last boss at center"},
	},
	advancedavoid = {},
	overheadmarkers = {},
}

return tbl