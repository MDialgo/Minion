local tbl = {
	name = "A4N Burden of the Father",
	dutyid = 445,
	level = 60,
	expansion = 3,
	creator = "Who.. Knows..",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=0.00,y=10.74,z=-19.20}},
	},
	interacts = {
		[1] = {contentid = 480, priority = 1, type = "Loot 1"},
		[2] = {contentid = 479, priority = 2, type = "Loot 2"},
		[3] = {contentid = 438, priority = 3, type = "Loot 3"},
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 4347, priority = 1, type = "Left Foreleg"},
		[2] = {contentid = 4346, priority = 2, type = "Right Foreleg"},
		[3] = {contentid = 3772, priority = 3, type = "Right Foreleg"},
	},
	ignoretarget = {2667},
	avoidentity= {},
	advancedavoid = {},
	overheadmarkers = {},
	puddledata= {},
}

return tbl