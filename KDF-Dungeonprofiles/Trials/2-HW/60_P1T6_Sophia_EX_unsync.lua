local tbl = {
	name = "Sophia Ex",
	dutyid = 577,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "Kill her before she uses the scales after she drops them",
	queuetype = 2,
	objectivedestinations = {},
	forcemeleerange = {},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 801, priority = 1, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	enemytargetdistance = 50,
	bossids = {},
	prioritytargetdistance = 40,
	prioritytarget = {},
	ignoretarget = {},
	avoidentity= {},
	tankat= {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
			local iscastingscales = KitanoiFuncs.ScanForCaster2(6529)
			if (iscastingscales) then
					KitanoiNavigation.NavAPI.MoveTo(19,0,0)
					KitanoiSettings.avoidingtime = KitanoiFuncs.Now() + 5000
			end
		]]
		},
--		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
--			local targ = Player:GetTarget()
--			if (Player.incombat and not targ and KitanoiFuncs.TimeSince(KitanoiFuncs.targettime)>2000) then
--					KitanoiNavigation.NavAPI.MoveTo(19,0,0)
--					KitanoiSettings.avoidingtime = KitanoiFuncs.Now() + 5000
--			end
--		]]
--		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	limitbreak = {},
	tethers = {},
	puddledata= {},
	enemylos = false,
}

return tbl