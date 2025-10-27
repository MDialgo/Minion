local tbl = {
	name = "T5 The Binding Coil of Bahamut Turn 5",
	mesh = "[Raid] Bahamut T5",
	dutyid = 245,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	queuetype = 2,
	requeuetimer = 30,
	objectivedestinations = {
		{objective = 1, pos = {x = 5.5300002098083, y = 49.889999389648, z = 8.0600004196167}},
	},
	forcemeleerange = {},
	interactdistance = 100,
	interacts = {
		{contentid = 223, priority = 1, type = "Loot 1"},
		{contentid = 224, priority = 1,	type = "Loot 2"},
		{contentid = 2001163, priority = 2, type = "Exit"},
	},
	enemytargetdistance = 30,
	bossids = {1482,2176,2176},
	prioritytargetdistance = 10,
	prioritytarget = {
		{contentid = 1482, priority = 1, type = "Twintania"},
	},
	advancedavoid = {
		{type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
			function customfunction()
				local function IsThereExit()
					local exitlist = KitanoiFuncs.MEntityList(KitanoiSettings.ExitList)
					if (exitlist~=nil) then
						local i,e = next(exitlist)
						if (i~=nil and e~=nil) then
							return true
						end
					end
					return false
				end

				local target = Player:GetTarget()
				if (not target and not Player.incombat and not IsThereExit()) then
					Player:MoveTo(47,47.93,68)
					KitanoiSettings.avoidingtime = Now()
				end
			end
		]]},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl