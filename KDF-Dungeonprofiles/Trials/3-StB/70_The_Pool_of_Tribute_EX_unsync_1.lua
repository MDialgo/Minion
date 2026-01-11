local tbl = {
	name = "Susano Ex",
	mesh = "[Trial] The Pool Of Tribute",
	dutyid = 677,
	level = 70,
	expansion = 4,
	creator = "Koyote",
	notes = "Meshes Required\nWill force the party in a certain point during the blade QTE",
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
		[1] = {contentid = 6225, priority = 1, type = "Blade"},
		[2] = {contentid = 6224, priority = 2, type = "Boulders"},
	},
	tankat= {
		[1] = {contentid = 6221, frompercent = 100, topercent = 0, pos = {x = -14, y = -0.12, z = 12}},
	},
	incombatinteract = {
		[1] = {interactid = 2008185, type = "interact", who = "closest" }, -- Blade's Shadow
	},
	advancedavoid = {
		[1] = {castingid = 9506, type = "singlefixed", pos = {[1] = {x=-3.50,y=-0.12,z=-0.13}}},
	},
	overheadmarkers = {},
}

return tbl