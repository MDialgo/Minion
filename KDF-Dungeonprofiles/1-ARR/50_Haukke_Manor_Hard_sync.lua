local tbl = {
	name = "Haukke Manor (Hard)",
	mesh = "[Dungeon] Haukke Manor (Hard)",
	dutyid = 350,
	level = 50,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		-- [1] = {"Key Counter"},
		[2] = {objective = 2, pos = {x = 10.90, y = 17.20, z = 0.55}},
		[3] = {objective = 3, pos = {x = -12.16, y = 0.20, z = -0.06}},
		[4] = {objective = 4, pos = {x = 14.63, y = -18.73, z = 0.12}},
	},
	interactdistance = 55,
	interacts = {
		[1] = {contentid = 2003312, priority = 1, type = "Tiny Key 1"},
		[2] = {contentid = 2003315, priority = 2, type = "Locked Door 1", req = {objective = 1, value = 1}},
		[3] = {contentid = 2003314, priority = 3, type = "Tiny Key 2"},
		[4] = {contentid = 2003316, priority = 4, type = "Locked Door 2", req = {objective = 1, value = 1}},
		[5] = {contentid = 2003430, priority = 5, type = "Tiny Key 3"},
		[6] = {contentid = 2003317, priority = 6, type = "Locked Door 3", req = {objective = 1, value = 1}},
		[7] = {contentid = 246, priority = 7, type = "Loot 1"}, -- Manor Varnish
		[8] = {contentid = 250, priority = 8, type = "Boss 1 Loot"},
		[9] = {contentid = 2002916, priority = 9, type = "Crystal Ball 1", req = {type="lua", lua = "return math.abs(math.floor(Player.pos.y)-16)<2 and KitanoiFuncs.GetFirstNotCompleted() == 3"}},
		[10] = {contentid = 2003313, priority = 10, type = "Tiny Key 4"},
		[11] = {contentid = 2003320, priority = 11, type = "Locked Door 4", req = {objective = 1, value = 1}},
		[12] = {contentid = 247, priority = 12, type = "Loot 2"},
		[13] = {contentid = 251, priority = 13, type = "Boss 2 Loot 1"},
		[14] = {contentid = 252, priority = 14, type = "Boss 2 Loot 2"},
		[15] = {contentid = 2002941, priority = 15, type = "Crystal Ball 2", req = {type="lua", lua = "return math.abs(math.floor(Player.pos.y)-0)<2 and KitanoiFuncs.GetFirstNotCompleted() == 4"}},
		[16] = {contentid = 248, priority = 16, type = "Loot 3"},
		[17] = {contentid = 249, priority = 17, type = "Loot 4"},
		[18] = {contentid = 253, priority = 18, type = "Boss 3 Loot"}, -- N/A
	},
	bossids = {
		426, -- Manor Jester
		2341, -- Ash
		2346, -- Halicarnassus -- Succubus Card
	},
	forcemeleerange = {2346},
	enemytargetdistance = 35,
	prioritytargetdistance = 35,
	prioritytarget = {
		[1] = {contentid = 2340, priority = 1, type = "Manor Butler"},
		[2] = {contentid = 2334, priority = 1, type = "Manor Claviger"},
		[3] = {contentid = 428, priority = 1, type = "Manor Sentry"},
		[4] = {contentid = 633, priority = 1, type = "Manor Maidservants"},
		[5] = {contentid = 2917, priority = 1, type = "Lady Amandine"},
	},
	tankat = {
		[1] = {contentid = 2346, frompercent = 100, topercent = 0, pos = {x = 13.03, y = -18.80, z = 15.66}, desc = "tank the 3rd Boss here"},
	},
	tankbuster = {1718},
	advancedavoid =	{
		[1] = {castingid = 1719, type = "multifixed", -- Beguiling Mist
			pos = {
				[1] = {x = 12.80, y = -18.80, z = -12.99},
				[2] = {x = -2.32, y = -18.80, z = -13.35},
				[3] = {x = -12.55, y = -18.80, z = -4.66},
				[4] = {x = -14.18, y = -18.90, z = 10.77}
			}
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	avoidentity = {
		[1] = {contentid = 2344, radius = 5.5}, -- Boss 2 : Spinning Abyssal Scythe
	},
	excludeavoid = {},
	limitbreak = {
		[1] = {contentid = 2917, level = 2, percent = 99, type = "melee"},
		[2] = {contentid = 2917, level = 1, percent = 99, type = "melee"},
	},
	puddledata = {
		[1] = {castid = 1698, desc = "first boss puddle", duration = 20, radius = 5.5},
	},
	pullenemyoutofpuddle = false,
	enemylos = true,
}

return tbl