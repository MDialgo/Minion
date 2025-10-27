local tbl = {
	name = "E5N Eden's Verse: Fulmination",
	mesh = "[KDF] - The Gandof Thunder Plains",
	dutyid = 902,
	level = 80,
	expansion = 5,
	creator = "Kitanoi",
	notes="Requires 8 characters.\nDoesn't support Duty Finder.\nRequires custom mesh from GitHub.\nIgnores Surge Protection mechanic so you will take vulnerability stacks.",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y=0,z=90}},
	},
	forcemeleerange= {9281},
	interacts = {
		[1] = {contentid = 1245, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1246, priority = 2, type = "Loot 2"},
		[3] = {contentid = 1261, priority = 3, type = "Loot Music"},
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 161,
			contentid = 9281,
			desc= "stacking",
			precise = false,
			type = "move",
			detectwho = "any",
			movetoentity = true,
			timetoreturn = 5,
		},
	},
	excludeavoid = {},
}

return tbl