local tbl = {
	name = "A9S Eyes of the Creator (Savage)",
	mesh = "[Raid] The Eyes of the Creator",
	dutyid = 584,
	level = 60,
	expansion = 3,
	creator = "Dibbi/Caro",
	notes = "",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -37.67, y = 114.71, z = -15.52}},
		[2] = {objective = 2, pos = {x = 1.48, y = -250.29, z = -268.02}},
		[3] = {objective = 3, pos =  {x = -40.89, y = 116.19, z = 3.92}},
	},
	forcemeleerange = {5170},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 2007455, priority = 1, type = "Cranial Hatch"},
		[2] = {contentid = 2007456, priority = 2, type = "Ingress"},
		[3] = {contentid = 814, priority = 3, type = "Loot 1"},
		[4] = {contentid = 815, priority = 3, type = "Loot 1"},
	},
	incombatinteract = {},
	enemytargetdistance = 50,
	bossids = {5169,5170},
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 5169, priority = 1, type = "Faust Z"},
		[2] = {contentid = 5170, priority = 2, type = "Refurbisher 0"},
	},
	tankat = {
		[1] = {contentid = 5169, frompercent = 100, topercent = 1, pos = {x = -39.69, y = 114.71, z = -3.70}},
		[2] = {contentid = 5170, frompercent = 100, topercent = 1, pos = {x = -2.33, y = -250.29, z = -259.57}},
	},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {5169,5170},
	puddledata= {
		[1] = {castid = 6712, radius= 5, duration = 60, desc = "swipe"},
	},
	pullenemyoutofpuddle = false,
}

return tbl