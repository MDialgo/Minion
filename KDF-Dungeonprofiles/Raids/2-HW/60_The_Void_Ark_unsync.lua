local tbl = {
	name = "The Void Ark",
	mesh = "[Raid] The Void Ark",
	dutyid = 508,
	level = 60,
	expansion = 3,
	creator = "Koyote#6642",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 287.81, y = -383.80, z = -125.8}},
	},
	forcemeleerange= {4617,4618},
	interactdistance = 40,
	interacts = {
	--A
		[2] = {contentid =502 , priority = 1, type = "Chest 1"},
		[3] = {contentid =503 , priority = 2, type = "Chest 2"},
		[4] = {contentid =504 , priority = 3, type = "Chest 3"},
		[5] = {contentid =505 , priority = 4, type = "Chest 4"},
	--B
		[6] = {contentid =506 , priority = 1, type = "Chest 1"},
		[7] = {contentid =507 , priority = 2, type = "Chest 2"},
		[8] = {contentid =508 , priority = 3, type = "Chest 3"},
		[9] = {contentid =509 , priority = 4, type = "Chest 4"},
	--C
		[10] = {contentid =510 , priority = 1, type = "Chest 1"},
		[11] = {contentid =511 , priority = 2, type = "Chest 2"},
		[12] = {contentid =512 , priority = 3, type = "Chest 3"},
		[13] = {contentid =513 , priority = 4, type = "Chest 4"},
		[14] = {contentid =514 , priority = 5, type = "Chest 5"},
	},
	incombatinteract= {},
	dontclearfriendlytargets = {},
	enemytargetdistance = 80,
	bossids = {4613,4623,4626,4631},
	prioritytarget = { -- Failsafe for the poison room
		[1] = {contentid = 4616, priority = 1, type = "The Pagan's Vine"},
		[2] = {contentid = 4617, priority = 1, type = "Toredo Moth"},
		[3] = {contentid = 4618, priority = 1, type = "Toredo Worm"},
		[4] = {contentid = 4619, priority = 1, type = "Ark Morbol"},
	},
	ignoretarget={},
	tankat = {},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
}

return tbl