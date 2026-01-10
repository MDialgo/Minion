local tbl = {
	name = "Sophia Ex",
	mesh = "",
	dutyid = 577,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "Kill her before she uses the scales after she drops them",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 801, priority = 1, type = "Loot"},
		-- Sophic Weapons, Sophic Bead Fragment, Sophic Lanner Whistle & Faded Copy of Equilibrium
	},
	bossids = {
		5199, -- Sophia -- Sophia Card
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 40,
	prioritytarget = {},
	ignoretarget = {},
	avoidentity = {},
	tankat = {},
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
	tethers = {},
	excludeavoid = {},
	limitbreak = {},
	puddledata = {},
	enemylos = false,
}

return tbl