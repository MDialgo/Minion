local tbl = {
	name = "The Dragon's Neck",
	dutyid = 142,
	level = 50,
	expansion = 2,
	creator = "Kitanoi\nModified by Dialgo",
	notes="",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=-270.00,y=19.07,z=18.98},},
		[2] = {objective = 1, pos = {x=-270.00,y=19.07,z=18.98},},
	},
	forcemeleerange = {},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 404, priority = 1, type = "Chest"},
	},
	enemytargetdistance = 20,
	bossids = {},
	prioritytargetdistance  = 30,
	prioritytarget = {},
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
					Player:MoveTo(-270.00,19.07,18.98)
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