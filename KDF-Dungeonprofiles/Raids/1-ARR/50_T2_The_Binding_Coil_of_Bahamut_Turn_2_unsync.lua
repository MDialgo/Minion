local tbl = {
	name = "T2 The Binding Coil of Bahamut Turn 2",
	mesh = "[Raid] Bahamut T2",
	dutyid = 242,
	level = 50,
	expansion = 2,
	creator = "Koyote@6642",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.00, y = -65.98, z = 70}},
	},
	forcemeleerange= {},
	interactdistance = 80,
	interacts = {
		[1] = {contentid = 219, priority = 1, type = "Loot 1"},
		[2] = {contentid = 220, priority = 2, type = "Loot 2"},
		[3] = {contentid = 2001161, priority = 3, type = "Exit"},
	},
	enemytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 1471, priority = 1, type = "Adds"},
		[2] = {contentid = 1470, priority = 1, type = "Adds"},
		[3] = {contentid = 1469, priority = 1, type = "Adds"},
		[4] = {contentid = 1468, priority = 1, type = "Adds"},
	},
	tankat= {},
	useaction = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
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
					Player:MoveTo(0,-104.00,6)
					KitanoiSettings.avoidingtime = Now()
				end
			end
		]]},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl