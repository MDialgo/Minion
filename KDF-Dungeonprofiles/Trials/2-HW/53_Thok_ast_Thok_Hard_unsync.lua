local tbl = {
	name = "Thok ast Thok (Hard)",
	mesh = "Thok ast Thok",
	dutyid = 432,
	level = 53,
	expansion = 3,
	creator = "Koyote",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100, y = 0, z = 100}},
	},
	interacts = {},
	bossids = {
		3660, -- Ravana -- Ravana Card & (Ravana's Forewing (Synced Only))
	},
	forcemeleerange= {3660},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {
		[1] = {contentid = 3660, frompercent = 100, topercent = 1, pos = {x = 0.77, y = 0, z = -0}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl