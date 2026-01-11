local tbl = {
	name = "Lakshmi Ex",
	mesh = "",
	dutyid = 720,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "Handles no mechanics. Expectation is you have enough characters to kill before any mechanics happen.",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 15, y= 0, z= -15}},
	},
	interacts = {
		[1] = {contentid = 949, priority = 1, type = "Loot"},
		-- Lakshmi Accessories, Blissful Shroud, Blissful Kamuy Fife & Faded Copy of Beauty's Wicked Wiles
	},
	bossids = {
		6385, -- Lakshmi -- Lakshmi Card
	},
	forcemeleerange= {},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 6386, priority = 1, type = "Dreaming Kshatriya"},
	},
	tankat= {},
	useaction = {},
	advancedavoid = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl