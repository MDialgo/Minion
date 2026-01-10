local tbl = {
	name = "[Sq] The Aurum Vale",
	mesh = "[Dungeon] Aurum Vale v2",
	dutyid = 1331,
	type = "squadron",
	level = 47,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 4,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 27, y = -9.2399997711182, z = 2.6199998855591}},
		[2] = {objective = 2, pos = {x = -156.7200012207, y = -30.430000305176, z = -133.64999389648}},
		[3] = {objective = 3, pos = {x = -156.7200012207, y = -30.430000305176, z = -133.64999389648}},
		[4] = {objective = 4, pos = {x = -340.17001342773, y = -32.119998931885, z = -133.86999511719}},
		[5] = {objective = 5, pos = {x = -406.29000854492, y = -33.119998931885, z = -115.83000183105}},
	},
	interacts = {
		[1] = {contentid = 149, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 153, priority = 2, type = "Loot 1"}, -- Morbol Seedling
		[3] = {contentid = 154, priority = 3, type = "Loot 2"}, -- Mossy Horn
		[4] = {contentid = 151, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 155, priority = 6, type = "Loot 3"}, -- Dodore Wing & Carnivorous Seedling
		[6] = {contentid = 156, priority = 6, type = "Loot 4"},
		[7] = {contentid = 148, priority = 8, type = "Boss 3 Loot"}, -- Miser's Folly Orchestrion Roll
	},
	bossids = {
		1534, -- Locksmith
		1533, -- Coincounter
		1532, -- Miser's Mistress -- Morbol Card
	},
	enemytargetdistance = 30,
	prioritytargetdistance = 5,
	prioritytarget = {
		[1] = {contentid = 1536, priority = 1, type = "Morbol Fruit"},
		[2] = {contentid = 1535, priority = 2, type = "Morbol Seedling"},
	},
	tankat = {},
	faceenemyaway = {},
	useaction = {},
	advancedavoid = {},
	hasbuff = {
		[1] = {
			buffid = 302,
			desc = "first boss",
			interactid = "2002648;2002647;2000778;2002649",
			stacksrequired = 2,
			type = "interact",
		},
		[2] = {
			buffid = 303,
			desc = "last boss",
			interactid = "2002663;2002662;2002661;2002660;2002659;2002658;2002657;2002656;2002655;2002654",
			stacksrequired = 3,
			type = "interact",
		},
	},
	overheadmarkers = {},
	limitbreak = {
		[1] = {contentid = 1533, percent = 95, level = 1, type = "squadron"},
		[2] = {contentid = 1532, percent = 95, level = 2, type = "squadron"},
		[3] = {contentid = 1532, percent = 95, level = 1, type = "squadron"},
	},
	staybehindentity = {1534,1533,1532},
}

return tbl