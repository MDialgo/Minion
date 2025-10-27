local tbl = {
	name = "Urth's Fount",
	mesh = "[Trial] Urth's Fount",
	dutyid = 394,
	level = 50,
	expansion = 2,
	creator = "Koyote",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 622, y = 23, z = 83}},
	},
	interacts = {
		[1] = {contentid = 361, priority = 1, type = "Loot"},
	},
	enemytargetdistance = 30,
	bossids = {887},
	prioritytarget = {
		[1] = {contentid = 887, priority = 1, desc="Odin"},
	},
	tankat= {
		[1] = {contentid = 887, frompercent = 100, topercent = 1, pos = {x = 622,  y = 23, z = 83}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {},
	overheadmarkers = {},
}

return tbl