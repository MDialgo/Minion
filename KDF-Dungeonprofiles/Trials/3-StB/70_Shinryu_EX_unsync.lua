local tbl = {
	name = "Shinryu Ex",
	dutyid = 730,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "Tested with 4 characters: WAR,SGE,MCH,MCH\nHave at least 1 max level MCH",
	queuetype = 2,
	objectivedestinations = {
		{objective = 1,	pos = {x = 100, y = 0,z = 100} },
	},
	interactdistance = 50,
	interacts = {
		{contentid = 976, priority = 1, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	bossids = {},
	forcemeleerange = {},
	enemytargetdistance = 80,
	prioritytargetdistance = 55,
	prioritytarget = {},
	tankat = {},
	advancedavoid = {
		{customdetails = "libraryfunction", functioncode = "KitanoiFuncs.GetShinryu()", type = "custom"},
	},
	hasbuff = {},
	overheadmarkers = {
		{contentid = "5640", desc = "green marker", detectwho = "me", id = 126, pos = {}, returnpos = {}, timetoreturn = 5, type = "justrecord"},
		{contentid = "5640", desc = "green marker",	detectwho = "me", id = 97, pos = {}, returnpos = {}, timetoreturn = 2, type = "justrecord"},
	},
	excludeavoid = {9752},
}

return tbl