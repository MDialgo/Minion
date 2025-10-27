local tbl = {
	name = "The Sunken Temple of Qarn (Hard)",
	mesh = "[Dungeon] The Sunken Temple of Qarn (Hard)",
	dutyid = 367,
	level = 50,
	expansion = 2,
	creator = "Dibbi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -60.532592773438, y = -12.000010490417, z = -59.464477539063}},
		[2] = {objective = 2, pos = {x = -51.5908203125, y = -51, z = -0.686767578125}},
		[3] = {objective = 3, pos = {x = 157.17597961426, y = -44.97692489624, z = 1.8996217250824}},
		[4] = {objective = 4, pos = {x = 231.25050354004, y = -4.0000004768372, z = 0.10545690357685}},
		[5] = {objective = 5, pos = {x = 192.17910766602, y = -4.0000171661377, z = -76.158790588379}},
		[6] = {objective = 6, pos = {x = 96.167251586914, y = -4.0000100135803, z = -16.531314849854}},
		[7] = {objective = 7, pos = {x = 120.80709838867, y = -3.9985847473145, z = 0.14240489900112}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 2004380, priority = 1, type = "Sun Sphere"},
		[2] = {contentid = 2004382, priority = 2, type = "Locked Door"},
		[3] = {contentid = 345, priority = 3, type = "Boss 1 Loot"},
		[4] = {contentid = 2004387, priority = 4, type = "Moon Sphere"},
		[5] = {contentid = 2004388, priority = 5, type = "Locked Door"},
		[6] = {contentid = 346, priority = 6, type = "Boss 2 Loot 1"},
		[7] = {contentid = 347, priority = 7, type = "Boss 2 Loot 2"},
		[8] = {contentid = 2004390, priority = 8, type = "Star Sphere"},
		[9] = {contentid = 2004398, priority = 9, type = "Magicked Pedestal"},
		[10] = {contentid = 2004400, priority = 10, type = "Magicked Pedestal"},
		[11] = {contentid = 2004396, priority = 11, type = "Magicked Pedestal"},
		[12] = {contentid = 348, priority = 12, type = "Boss 3 Loot"}, -- Mummy's Little Mummy & Forgotten by the Sun Orchestrion Roll
	},
	bossids = {
		3065, -- Damaged Adjudicator
		3071, -- Sabotender Emperatriz
		3075, -- Vicegerent to the Warden -- Vicegerent to the Warden Card
	},
	forcemeleerange = {3065},
	enemytargetdistance = 30,
	prioritytargetdistance = 15,
	prioritytarget = {
		[1] = {contentid = 3052, priority = 1, type = "Cracked Qarn Facer"},
		[2] = {contentid = 3065, priority = 1, type = "Damaged Adjudicator"},
		[3] = {contentid = 3062, priority = 1, type = "Vicegerent's Head"},
		[4] = {contentid = 3074, priority = 1, type = "Sabotender Guardia"},
		[5] = {contentid = 3051, priority = 1, type = "Temple Mummy"},
		[6] = {contentid = 3075, priority = 1, type = "Vicegerent to the Warden"},
	},
	avoidentity = {
		[1] = {contentid = 3069, radius = 10}, -- Sand Sphere
		--[2] = {contentid = 2004601, radius = 15}, -- Quicksand
	},
	tankat = {
		[1] = {contentid = 3065, frompercent = 100, topercent = 0, pos = {x = -54.47, y = -50.95, z = 15.76}, desc = "tank the Adjudicator here"},
	},
	incombatinteract = {},
	advancedavoid = {},
	hasbuff = {
		[1] = {
			buffid = 567,
			type = "move",
			pos = {
				[1] = {x = -43.88, y = -51.00, z = -19.12},
				[2] = {x = -43.88, y = -51.00, z = -19.12},
				[3] = {x = -43.88, y = -51.00, z = -19.12},
				[4] = {x = -43.88, y = -51.00, z = -19.12},
			},
		}
	},
	overheadmarkers = {
		[1] = {
			id = 22,
			contentid = "3065", -- Damaged Adjudicator
			desc= "Put orb away",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = -38.85, y = -51.00, z = 17.05},
				[2] = {x = -38.85, y = -51.00, z = 17.05},
				[3] = {x = -38.85, y = -51.00, z = 17.05},
				[4] = {x = -38.85, y = -51.00, z = 17.05}
			},
			timetoreturn = 5
		},
	},
	excludeavoid = {},
	staybehindentity = {3065},
	pullenemyoutofpuddle = false,
}

return tbl