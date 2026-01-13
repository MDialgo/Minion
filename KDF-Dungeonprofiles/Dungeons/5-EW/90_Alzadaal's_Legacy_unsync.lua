local tbl = {
	name = "Alzadaal's Legacy",
	mesh = "",
	dutyid = 1050,
	level = 90,
	expansion = 6,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = true,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 124, y = 303, z = -103}},
		[2] = {objective = 2, pos = {x = 124, y = 303, z = -103}},
		[3] = {objective = 3, pos = {x = 0, y = -16, z = -180}},
		[4] = {objective = 4, pos = {x = 0, y = -16, z = -180}},
		[5] = {objective = 5, pos = {x = 110, y = -350, z = -66}},
		[6] = {objective = 6, pos = {x = 110, y = -350, z = -66}},
	},
	interacts = {
		[1] = {contentid = 1449, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 2012779, priority = 2, type = "Salt-encrusted Teleporter"},
		[3] = {contentid = 1445, priority = 3, type = "Loot 1"},
		[4] = {contentid = 1446, priority = 4, type = "Loot 2"},
		[5] = {contentid = 1450, priority = 5, type = "Boss 2 Loot"},
		[6] = {contentid = 1447, priority = 6, type = "Loot 3"},
		[7] = {contentid = 1448, priority = 7, type = "Loot 4"},
		[8] = {contentid = 1451, priority = 8, type = "Boss 3 Loot"}, -- Teacup Kapikulu, The Map Unfolds Orchestrion Roll & Alzadaal's Garden Lamp
	},
	bossids = {
		11241, -- Ambujam
		11239, -- Armored Chariot
		11238, -- Kapikulu -- Rampart Card
	},
	forcemeleerange = {11238},
	prioritytarget = {
		[1] = {contentid = 11227, priority = 1, type = "Alzadaal's Rampart"},
		[2] = {contentid = 11231, priority = 2, type = "Clawtrap Alzadaal XIV"},
	},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.Alzadaar4man()"},
		[2] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.Alzadaar()"},
	},
	overheadmarkers = {
		[1] = {
			contentid = "10313",
			desc = "firstboss stacking",
			detectwho = "any",
			id = 62,
			movetoentity = true,
			precise = false,
			timetoreturn = 5,
			type = "move",
		},
		[2] = {
			contentid = "10316",
			desc = "lastboss stacking",
			detectwho = "any",
			id = 62,
			movetoentity = true,
			precise = false,
			timetoreturn = 5,
			type = "move",
		},
		[3] = {
			contentid = "10313",
			desc = "group marker",
			detectwho = "any",
			id = 55,
			pos = {},
			returnpos = {},
			timetoreturn = 5,
			type = "justrecord",
		},
	},
	excludeavoid = {28443,28445,28454,28455,28526,28527},
	tankbuster = {},
	limitbreak = {
		[1] = {contentid = 10316, level = 2, percent = 10, type = "dps"},
	},
	puddledata = {
		[1] = {castid = 28441, desc = "middle puddle", duration = 240, radius = 7},
	},
	pausemovement = {
		"return KitanoiFuncs.ScanForCaster2(28736) and not Player.incombat and not KitanoiFuncs.CheckPointInAOETable(Player.pos.x,Player.pos.y,Player.pos.z)",
	},
}

return tbl