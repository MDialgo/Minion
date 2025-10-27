local tbl = {
	name = "E2N Eden's Gate: Descent",
	mesh = "The Halo",
	dutyid = 850, --  MAP ID
	level = 80,
	expansion = 5,
	creator = "Koyote@6642",
	notes = "",
	hacks = false,
	queuetype = 1,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100.11,	y = 0,	z = 91.55}},
	},
	forcemeleerange= {8382}, -- ID
	interacts = {
		[1] = {contentid = 1186, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1187, priority = 2, type = "Loot 2"},
		[3] = {contentid = 1212, priority = 3, type = "Loot 3"},
	},
	enemytargetdistance = 100,
	prioritytarget = {}, -- ID
	avoidentity = {
		--[1] = {contentid= 8382, type = "rectangle"},
	},
	tankat= {
		[1] = {contentid = 8382, frompercent = 100, topercent = 1, pos = {x = 100.11,	y = 0,	z = 91.55}, desc = "Tank at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {
			[1] = {
			castingid = 15931, -- doomvoid guillotine
			type = "multifixed",
			pos = {
				[1] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[2] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[3] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[4] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[5] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[6] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[7] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[8] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
			},
		},
		[2] = {
			castingid = 15951, -- doomvoid guillotine
			type = "multifixed",
			pos = {
				[1] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[2] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[3] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[4] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[5] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[6] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[7] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
				[8] = {x = 107.39550018311,	y = 0,	z = 119.04055786133},
			},
		},
		[3] = {
			castingid = 15932, -- doomvoid slicer
			type = "multifixed",
			pos = {
				[1] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[2] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[3] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[4] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[5] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[6] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[7] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[8] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
			},
		},
		[4] = {
			castingid = 15952, -- doomvoid slicer
			type = "multifixed",
			pos = {
				[1] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[2] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[3] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[4] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[5] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[6] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[7] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
				[8] = {x = 105.57518005371,	y = 0,	z = 101.72925567627},
			},
		},
		-- [5] = {
			-- castingid = 15935, -- Unholy Darkness
			-- type = "multifixed",
			-- pos = {
				-- [1] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [2] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [3] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [4] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [5] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [6] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [7] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
				-- [8] = {x = 101.80165863037,	y = 0,	z = 101.2954788208},
			-- },
		-- },
		[7] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','15941','false') == true) then if (ActionList:Get(1,7548):IsReady()) then ActionList:Get(1,7548):Cast(Player.id) end end end"}, -- arms length
		[8] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','15941','false') == true) then if (ActionList:Get(1,7559):IsReady()) then ActionList:Get(1,7559):Cast(Player.id) end end end"}, -- surecast
		[9] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.e2ncustom()"},
	},
	hasbuff = {
		[1] = {
			type = "move",
			buffid = 1810,
			stacksrequired = 0,
			pos = {
				[1] = {x=100,y=0,z=114},
				[2] = {x=112,y=0,z=115},
				[3] = {x=112,y=0,z=100},
				[4] = {x=112,y=0,z=82},
				[5] = {x=100,y=0,z=82},
				[6] = {x=88,y=0,z=82},
				[7] = {x=87,y=0,z=100},
				[8] = {x=87,y=0,z=116},
			},
		},
	},
	overheadmarkers = {
		[1] = {id = 76,
		contentid = "8382",
		desc= "last boss rocks",
		type = "move",
		detectwho = "me",
			pos = {
				[1] = {x=100,y=0,z=114},
				[2] = {x=112,y=0,z=115},
				[3] = {x=112,y=0,z=100},
				[4] = {x=112,y=0,z=82},
				[5] = {x=100,y=0,z=82},
				[6] = {x=88,y=0,z=82},
				[7] = {x=87,y=0,z=100},
				[8] = {x=87,y=0,z=116},
			},
		timetoreturn = 0,
		},
	},
	excludeavoid = {15981,15982,15983,15984,15941,15942,15961,15962
	},
}

return tbl