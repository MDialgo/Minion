local tbl = {
	name = "The Final Day",
	mesh = "[Trial] The Final Day",
	dutyid = 997,
	level = 90,
	expansion = 6,
	creator = "Hikari#6615 & Kitanoi",
	notes = "",
	queuetype = 1,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100,y = 0.00,z = 100}},
	},
	interacts = {},
	bossids = {10448},
	enemytargetdistance = 50,
	prioritytarget = {},
	avoidentity= {
		[1] = {contentid= 10443, radius = 7},
	},
	tankat= {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27753','27754','false') == true) then if (ActionList:Get(1,7548):IsReady()) then ActionList:Get(1,7548):Cast(Player.id) end end end"}, -- Arm's Length
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27753','27754','false') == true) then if (ActionList:Get(1,7559):IsReady()) then ActionList:Get(1,7559):Cast(Player.id) end end end"}, -- Surecast
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27753','27754','false') == true) then if (ActionList:Get(1,3):IsReady()) then ActionList:Get(1,3):Cast(Player.id) end end end"}, -- Sprint
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27753','27754','false') == true) then if (ActionList:Get(1,7388):IsReady()) then ActionList:Get(1,7388):Cast(Player.id) end end end"}, -- Shake It Off
		[5] = {castingid = 26185, type = "multifixed", pos = {[1] = {x=84.99,y=0,z=95.73},[2] = {x=88.92,y=0,z=99.48},[3] = {x=93.13,y=0,z=101.62},[4] = {x=98.50,y=0,z=102.73},[5] = {x=103.77,y=0,z=102.24},[6] = {x=107.33,y=0,z=101.26},[7] = {x=110.61,y=0,z=100.04},[8] = {x=114.24,y=0,z=98.15}}},
		[6] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = 'function customfunction() local ents = MEntityList("contentid=10448,maxdistance=50") if (ents~=nil and TableSize(ents) > 0) then for i,e in pairs(ents) do if (e~=nil) then if (not e.targetable and math.distance2d({x=100,y=0,z=88},e.pos)<2) then Player:MoveTo(113.5,0,86.5) KitanoiSettings.avoidingtime = Now() elseif (not e.targetable and math.distance2d({x=91.5,y=0,z=91.5},e.pos)<2) then Player:MoveTo(100,0,81) KitanoiSettings.avoidingtime = Now() end end end end end'},
		[7] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = 'function customfunction() local target = Player:GetTarget() if (Player.incombat and not target and KitanoiFuncs.HowManyAOES() == 0) then if (KitanoiFuncs.ReturnSortedParty()[1] == Player.id or KitanoiFuncs.ReturnSortedParty()[2] == Player.id or KitanoiFuncs.ReturnSortedParty()[3] == Player.id or KitanoiFuncs.ReturnSortedParty()[4] == Player.id) then Player:MoveTo(91,0,100) KitanoiSettings.avoidingtime = Now() elseif (KitanoiFuncs.ReturnSortedParty()[5] == Player.id or KitanoiFuncs.ReturnSortedParty()[6] == Player.id or KitanoiFuncs.ReturnSortedParty()[7] == Player.id or KitanoiFuncs.ReturnSortedParty()[8] == Player.id) then Player:MoveTo(107,0,104) KitanoiSettings.avoidingtime = Now() end end end'},
		[8] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27481','27481','false') == true) then if (ActionList:Get(1,199):IsReady()) then ActionList:Get(1,199):Cast(Player.id) end end end"}, -- Tank LB3 (PLD)
		[9] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27481','27481','false') == true) then if (ActionList:Get(1,4240):IsReady()) then ActionList:Get(1,4240):Cast(Player.id) end end end"}, -- Tank LB3 (WAR)
		[10] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27481','27481','false') == true) then if (ActionList:Get(1,4241):IsReady()) then ActionList:Get(1,4241):Cast(Player.id) end end end"}, -- Tank LB3 (DRK)
		[11] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27481','27481','false') == true) then if (ActionList:Get(1,17105):IsReady()) then ActionList:Get(1,17105):Cast(Player.id) end end end"}, -- Tank LB3 (GNB)
		[12] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (ScanForCaster('','100','27481','27481','false') == true) then if (ActionList:Get(1,24311):IsReady()) then ActionList:Get(1,24311):Cast(Player.id) end end end"}, -- Panhaima
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {27754,26203},
	tankbuster = {26195,26190},
}

return tbl