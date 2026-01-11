local tbl = {
	name = "Shinryu Ex",
	mesh = "",
	dutyid = 730,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "Tested with 4 characters: WAR,SGE,MCH,MCH\nHave at least 1 max level MCH",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100, y = 0, z = 100}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 976, priority = 1, type = "Loot"},
		-- Shinryu Weapons, Shinryu's Scale, Legendary Kamuy Fife & Faded Copy of The Worm's Tail
	},
	bossids = {
		5640, -- Shinryu -- Shinryu Card
	},
	forcemeleerange = {},
	enemytargetdistance = 80,
	prioritytargetdistance = 55,
	prioritytarget = {
		[1] = {contentid = 5789, priority = 1, type = "Tail"},
	},
	tankat = {},
	advancedavoid = {
		[1] = {customdetails = "libraryfunction", functioncode = "KitanoiFuncs.GetShinryu()", type = "custom"},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {contentid = "5640", desc = "green marker", detectwho = "me", id = 126, pos = {}, returnpos = {}, timetoreturn = 5, type = "justrecord"},
		[2] = {contentid = "5640", desc = "green marker",	detectwho = "me", id = 97, pos = {}, returnpos = {}, timetoreturn = 2, type = "justrecord"},
	},
	excludeavoid = {9752},
}

return tbl