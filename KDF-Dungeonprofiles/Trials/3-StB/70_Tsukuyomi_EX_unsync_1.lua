local tbl = {
	name = "Tsukuyomi Ex",
	mesh = "[Trial] Castrum Fluminis",
	dutyid = 779,
	level = 70,
	expansion = 4,
	creator = "Hikari",
	notes = "Will facetank most of the AOEs",
	queuetype = 2,
	hacks = false,
	requeuetimer  = 30,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100,y = 0,z = 90} },
	},
	interacts = {
		[1] = {priority = 1, contentid = 1032, type = "Loot"}, -- Mount & Orchestrion & Craft Material & Furniture
	},
	bossids = {7225},
	enemytargetdistance = 50,
	prioritytarget = {},
	advancedavoid = {},
	hasbuff = {
		[1] = {buffid = 1538, type = "move", stacksrequired = 3, pos = {[1] = {x= 112.07 ,y= 0.20,z= 100.17}, [2] = {x= 112.07 ,y= 0.20,z= 100.17}, [3] = {x= 112.07 ,y= 0.20,z= 100.17}, [4] = {x= 112.07 ,y= 0.20,z= 100.17}, [5] = {x= 112.07 ,y= 0.20,z= 100.17}, [6] = {x= 112.07 ,y= 0.20,z= 100.17}, [7] = {x= 112.07 ,y= 0.20,z= 100.17}, [8] = {x= 112.07 ,y= 0.20,z= 100.17} } },
		[2] = {buffid = 1539, type = "move", stacksrequired = 3, pos = {[1] = {x=  86.42 ,y= 0.20,z= 100.04}, [2] = {x=  86.42 ,y= 0.20,z= 100.04}, [3] = {x=  86.42 ,y= 0.20,z= 100.04}, [4] = {x=  86.42 ,y= 0.20,z= 100.04}, [5] = {x=  86.42 ,y= 0.20,z= 100.04}, [6] = {x=  86.42 ,y= 0.20,z= 100.04}, [7] = {x=  86.42 ,y= 0.20,z= 100.04}, [8] = {x=  86.42 ,y= 0.20,z= 100.04} } },
	},
	overheadmarkers = {},
	excludeavoid = {11222,11244,11245,11234,11238,11239},
	tankbuster = {11235},
}

return tbl