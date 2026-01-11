local tbl = {
	name = "Byakko Ex",
	mesh = "",
	dutyid = 758,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 15, y = 0, z = -15}},
	},
	interacts = {
		[1] = {contentid = 1010, priority = 1, type = "Loot"},
		-- Byakko Weapons, Byakko's Mane, Auspicious Kamuy Fife & Faded Copy of the Jade Stoa
	},
	bossids = {
		7092, -- Byakko -- Byakko Card
	},
	forcemeleerange = {7092},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 7092, priority = 1, type = "Byakko"},
	},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "libraryfunction",functioncode = "KitanoiFuncs.CustomByakko()"},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl