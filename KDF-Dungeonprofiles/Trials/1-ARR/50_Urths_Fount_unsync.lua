local tbl = {
	name = "Urth's Fount",
	mesh = "[Trial] Urth's Fount",
	dutyid = 394,
	level = 50,
	expansion = 2,
	creator = "Koyote",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 622, y = 23, z = 83}},
	},
	interacts = {
		[1] = {contentid = 361, priority = 1, type = "Loot"},
		-- Dark Divinity Armor & Faded Copy of The Corpse Hall
	},
	bossids = {
		887, -- Odin -- Odin Card
	},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 887, priority = 1, type = "Odin"},
	},
	tankat= {
		[1] = {contentid = 887, frompercent = 100, topercent = 1, pos = {x = 622,  y = 23, z = 83}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {},
	overheadmarkers = {},
}

return tbl