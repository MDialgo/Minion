local tbl = {
	name = "P5N - Abyssos: The Fifth Circle",
	mesh = "[Raid] The Caustic Purgatory",
	dutyid = 1081,
	level = 90,
	expansion = 6,
	creator = "Kitanoi",
	notes="Requires 8 characters.\nDoesn't support Duty Finder.\nRequires custom mesh from GitHub.",
	hacks = false,
	queuetype = 1,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y=0,z=90}},
	},
	forcemeleerange= {11440},
	interacts = {
		[1] = {contentid = 1499, priority = 1, type="Loot 1"},
		[2] = {contentid = 1500, priority = 2, type="Loot 2"},
		[3] = {contentid = 1516, priority = 3, type="Loot 3"},
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {
		--[1] = {contentid = 11440, frompercent = 100, topercent = 60, pos = {x= 87, y= 0, z= 112}, desc = "100-60"},
		--[2] = {contentid = 11440, frompercent = 59, topercent = 0, pos = {x= 93, y= -300, z= 106}, desc = "100-60"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.p5n()"},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() KitanoiFuncs.LoadMesh('[Raid] The Caustic Purgatory') end"},
		--[2] = {castingid = 30424, type = "setdistance", dist = 18, desc = "ruby ray"},
	},
	hasbuff = {},
	overheadmarkers = {	
		[1] = {
			id = 161, 
			contentid = 11440,
			desc= "stacking",
			--precise = false,
			type = "justrecord",
			detectwho = "any",
			--movetoentity = true,
			timetoreturn = 10,
		},
		[2] = {
			id = 100,
			contentid = 11440,
			desc= "stacking",
			--precise = false,
			type = "justrecord",
			detectwho = "any",
			--movetoentity = true,
			timetoreturn = 10,
		},
	},
	excludeavoid = {
		30447,
		30426, --ruby reflection
		30424, --ruby reflection
	},
}

return tbl