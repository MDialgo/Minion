local tbl = {
	name = "Battle on the Big Bridge",
	mesh = "Griffin Crossing",
	dutyid = 366,
	level = 50,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 129.5, y = -5, z = -0.12}},
		[2] = {objective = 1, pos = {x = 129.5, y = -5, z = -0.12}},
	},
	interactdistance = 30,
	interacts = {},
	bossids = {
		2665, -- Gilgamesh -- Gilgamesh & Enkidu Card & Faded Copy of Battle on the Big Bridge
	},
	forcemeleerange = {},
	enemytargetdistance = 20,
	prioritytargetdistance = 30,
	prioritytarget = {},
	avoidentity = {},
	tankat = {},
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
						Player:MoveTo(129.5,-5,-0.12)
						KitanoiSettings.avoidingtime = Now()
					end
				end
			]]
		},
	},
	overheadmarkers = {},
	excludeavoid = {}, -- 29904 colossal slam
	dontexcludeaoe = {},
	puddledata = {},
	pausemovement = {},
}

return tbl