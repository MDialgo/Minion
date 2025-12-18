local tbl = {
	name = "Shiva Ex",
	dutyid = 378,
	level = 50,
	expansion = 2,
	creator = "Wxlfee",
	notes="Shiva Material Grind (Funny weapons).",
	queuetype = 2,
	objectivedestinations = {},
	forcemeleerange = {},
	interacts = {
		[1] = {contentid = 366, priority = 1, type = "Treasure Coffer"},
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 2995, priority = 1, type = "Ice Soldier"},
	},
	tankat= {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "if HasBuff(Player.id,604) then Player:Stop() d('Frozen Floor, not moving.') end"},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {3051},
}

return tbl