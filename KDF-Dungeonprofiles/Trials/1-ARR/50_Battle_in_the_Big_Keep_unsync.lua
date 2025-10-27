local tbl = {
	name = "Battle in the Big Keep",
	dutyid = 396,
	level = 50,
	expansion = 2,
	creator = "Kitanoi\nModified by Dialgo",
	notes="",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= -14.19,y= 0,z= 0.04},},
		[2] = {objective = 1, pos = {x= -14.19,y= 0,z= 0.04},},
	},
	forcemeleerange = {},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 421, priority = 1, type = "Chest"},
	},
	enemytargetdistance = 20,
	bossids = {},
	prioritytargetdistance  = 30,
	prioritytarget = {
		[1] = {contentid = 3304, priority = 1, type = "Enkidu"},
	},
	avoidentity= {},
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
					Player:MoveTo(-14.19,0,0.04)
					KitanoiSettings.avoidingtime = Now()
				end
			end
		]]},
	},
	dontexcludeaoe = {},
	overheadmarkers = {},
	excludeavoid = {},
	puddledata= {},
	pausemovement = {},
}

return tbl