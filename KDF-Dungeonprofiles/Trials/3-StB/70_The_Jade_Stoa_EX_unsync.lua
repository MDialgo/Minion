local tbl = {
	name = "Byakko Ex",
	dutyid = 758, --  MAP ID
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 15, y= 0, z= -15} }, -- boss 1
	},
	interacts = {
		[1] = {contentid = 1010, priority = 1, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	bossids = {
		7092, -- Byakko
	},
	forcemeleerange= {7092},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 7092, priority = 1, },
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