local tbl = {
	name = "Susano Ex",
	mesh = "[Trial] The Pool Of Tribute",
	dutyid = 677,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "Meshes Required",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.76, y = -0.12, z = -12.85}},
	},
	interacts = {
		[1] = {contentid = 916, priority = 1, type = "Loot"},
		-- Susano Weapons, Blade of Revelry, Reveling Kamuy Fife & Faded Copy of Revelation
	},
	bossids = {
		6221, -- Susano -- Susano Card
	},
	forcemeleerange = {6221},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 6224, priority = 1, type = "Boulders"},
	},
	tankat = {
		[1] = {contentid = 6221, frompercent = 100, topercent = 1, pos = {x = -11.27, y = -0.12, z = -9.55}, desc = "Susano Tank Position"},
	},
	incombatinteract = {
		[1] = {interactid = 2008185, type = "interact", who = "closest", desc = "Sword QTE"},
	},
	advancedavoid = {},
	hasbuff = {
		[1] = {type = "move", buffid = 1273, pos = {x = -11.04,y = -0.12,z = 2.42}},
	},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {8243},
}

return tbl