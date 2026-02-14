local tbl = {
	name = "O7N Sigmascape V3.0",
	mesh = "Sigmascape V3.0",
	dutyid = 750,
	level = 70,
	expansion = 4,
	creator = "Dialgo",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		{objective = 1, pos = {x = 0, y = 0, z = 0}},
	},
	forcemeleerange = {7107},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 1011, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1012, priority = 2, type = "Loot 2"},
	},
	incombatinteract = {},
	enemytargetdistance = 30,
	bossids = {7107},
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 7110, priority = 1, type = "Dadaluma"},
		[2] = {contentid = 7111, priority = 1, type = "Ultros"},
		[3] = {contentid = 7113, priority = 1, type = "Bibliotaph"},
		[4] = {contentid = 7114, priority = 1, type = "Bibliognost"},
	},
	avoidentity= {
        [1] = {contentid= 7109, radius = 4},
        },
	tankat= {
		[1] = {contentid = 7107, frompercent = 100, topercent = 1, pos = {x = 0,y = 0,z = 0}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl