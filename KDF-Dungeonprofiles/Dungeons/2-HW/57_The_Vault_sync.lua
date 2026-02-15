local tbl = {
	name = "The Vault",
	mesh = "[HM] - The Vault v2",
	dutyid = 1066,
	level = 57,
	expansion = 3,
	creator = "Kitanoi/Goobypls#0959",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.029999999329448, y = -291.94000244141, z = -99.949996948242}},
		[2] = {objective = 2, pos = {x = 0.20000000298023, y = 0, z = 71.669998168945}},
		[3] = {objective = 3, pos = {x = 0.18000000715256, y = 300, z = -7.5700001716614}},
	},
	interacts = {
		[1] = {contentid = 452, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 448, priority = 2, type = "Loot 1"},
		[3] = {contentid = 449, priority = 3, type = "Loot 2"},
		[4] = {contentid = 453, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 450, priority = 5, type = "Loot 3"},
		[6] = {contentid = 451, priority = 6, type = "Loot 4"},
		[7] = {contentid = 454, priority = 7, type = "Boss 3 Loot"}, -- Unicolt, Stigma Orchestrion Roll & Toll of the Bells Orchestrion Roll
	},
	bossids = {
		3634, -- Ser Adelphel Brightblade
		3639, -- Ser Grinnaux The Bull
		3642, -- Ser Charibert -- Charibert Card & Hallowed Halls Orchestrion Roll
	},
	forcemeleerange = {3642},
	enemytargetdistance = 40,
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 4401, priority = 1, type = "Archer"},
		[2] = {contentid = 3843, priority = 2, type = "Caster"},
		[3] = {contentid = 4400, priority = 3, type = "Last Boss Holy Flame"},
	},
	avoidentity = {
		[1] = {contentid = 4385, radius = 7},
		[2] = {contentid = 3293, radius = 10},
	},
	tankat = {},
	advancedavoid = {
		[1] = {customdetails = "libraryfunction", functioncode = "KitanoiFuncs.TheVault()", type = "custom"},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					KitanoiFuncs.LoadMesh("[HM] - The Vault v2")
				end
			]]
		},
	},
	overheadmarkers = {},
	staybehindentity = {3639},
	puddledata = {
		[1] = {castid = 4140, desc = "Dimensional Rip Puddle Orb", duration = 120, radius = 8, type = "player"},
	},
}

return tbl