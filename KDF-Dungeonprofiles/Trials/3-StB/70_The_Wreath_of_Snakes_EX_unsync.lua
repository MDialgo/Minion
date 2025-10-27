local tbl = {
	name = "Seiryu Ex",
	dutyid = 825,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		{objective = 1,	pos = {x = 100, y = 0, z = 100} },
	},
	interactdistance = 50,
	interacts = {
		{contentid = 1122, priority = 1, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	bossids = {},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 55,
	prioritytarget = {},
	tankat = {},
	advancedavoid = {
		{customdetails = "libraryfunction", functioncode = "KitanoiFuncs.GetSeiryu()", type = "custom"},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {14283,14328},
}

return tbl