local tbl = {
	name = "Emanation",
	mesh = "[Trial] Emanation",
	dutyid = 719,
	level = 67,
	expansion = 4,
	creator = "Koyote/Rinn",
	notes = "",
	queuetype = 2,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=100,y=0,z=100} },
	},
	interacts = {},
	forcemeleerange= {6386},
	enemytargetdistance = 50,
	prioritytarget = {},
	tankat= {
		[1] = {contentid = 6386, frompercent = 100, topercent = 1, pos = {x = -4, y = 0, z = -3}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction()local a=MEntityList('contentid=6385')if a~=nil then for b,c in pairs(a)do if c.action~=nil then if c.action==7748 then if ActionList:Get(5,26):IsReady()then Player:Stop()ActionList:Get(5,26):Cast()end end end end end end"},--to phase 2
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl