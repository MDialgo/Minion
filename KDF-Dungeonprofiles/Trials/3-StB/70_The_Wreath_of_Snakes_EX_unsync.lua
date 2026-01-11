local tbl = {
	name = "Seiryu Ex",
	mesh = "",
	dutyid = 825,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100, y = 0, z = 100}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 1122, priority = 1, type = "Loot"},
		-- Seiryu Weapons, Seiryu's Scale, Hallowed Kamuy Fife & Faded Copy of From the Dragon's Wake
	},
	bossids = {
		7922, -- Seiryu -- Seiryu Card
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 55,
	prioritytarget = {},
	tankat = {},
	advancedavoid = {
		[1] = {customdetails = "libraryfunction", functioncode = "KitanoiFuncs.GetSeiryu()", type = "custom"},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {14283,14328},
}

return tbl