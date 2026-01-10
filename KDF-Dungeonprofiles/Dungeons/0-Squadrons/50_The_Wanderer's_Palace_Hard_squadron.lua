local tbl = {
	name = "[Sq] The Wanderer's Palace (Hard)",
	mesh = "[Dungeon] Wanderers Palace (Hard)",
	dutyid = 188,
	type = "squadron",
	level = 50,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 4,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 72, y = 6, z = -435}},
		[2] = {objective = 2, pos = {x = 72, y = 6, z = -435}},
		[3] = {objective = 3, pos = {x = 72, y = 6, z = -435}},
		[4] = {objective = 4, pos = {x = 72, y = 6, z = -435}},
		[5] = {objective = 5, pos = {x = 72, y = 6, z = -435}},
		[6] = {objective = 6, pos = {x = 72, y = 6, z = -435}},
		[7] = {objective = 7, pos = {x = 72, y = 6, z = -435}},
	},
	interactdistance = 40,
	interacts = {
		[1] = {contentid = 357, priority = 1, type = "Loot 1"},
		[2] = {contentid = 362, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 358, priority = 3, type = "Loot 2"},
		[4] = {contentid = 363, priority = 4, type = "Boss 2 Loot 1"},
		[5] = {contentid = 364, priority = 5, type = "Boss 2 Loot 2"},
		[6] = {contentid = 2004549, priority = 6, type = "Asylum Key"},
		[7] = {contentid = 2004557, priority = 7, type = "Asylum Cell"},
		[8] = {contentid = 2004556, priority = 8, type = "Asylum Cell"},
		[9] = {contentid = 359, priority = 9, type = "Loot 3"},
		[10] = {contentid = 360, priority = 10, type = "Loot 4"},
		[11] = {contentid = 2004562, priority = 11, type = "Drainage Valve"},
		[12] = {contentid = 2004565, priority = 12, type = "Nymian Device"},
		[13] = {contentid = 365, priority = 13, type = "Boss 3 Loot"}, -- Tricksome Orchestrion Roll
	},
	bossids = {
		3091, -- Frumious Koheel Ja
		3093, -- Slithy Zolool Ja
		3095, -- Manxome Molaa Ja Ja -- Tonberry Card & Manxome Molaa Ja Ja Card
	},
	forcemeleerange = {},
	enemytargetdistance = 40,
	prioritytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 3092, priority = 1, type = "First Boss Spears"},
		[2] = {contentid = 3086, priority = 2, type = "Standards"},
		[3] = {contentid = 3096, priority = 3, type = "Last Boss Standards"},
		[4] = {contentid = 3098, priority = 4, type = "Last Boss Standards"},
		[5] = {contentid = 3097, priority = 5, type = "Last Boss Standards"},
	},
	avoidentity = {},
	tankat = {},
	advancedavoid = {
	--	[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
	--			function customfunction()
	--				KitanoiFuncs.LoadMesh("[Dungeon] Wanderers Palace (Hard)")
	--			end
	--		]]
	--	},
	},
	overheadmarkers = {},
	limitbreak = {
		[1] = {contentid = 3093, percent = 95, level = 1, type = "squadron"},
		[2] = {contentid = 3095, percent = 95, level = 2, type = "squadron"},
		[3] = {contentid = 3095, percent = 95, level = 1, type = "squadron"},
	},
	puddledata= {},
}

return tbl