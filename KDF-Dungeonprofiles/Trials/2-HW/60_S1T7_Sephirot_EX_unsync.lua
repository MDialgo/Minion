local tbl = {
	name = "Sephirot Ex",
	mesh = "",
	dutyid = 524,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0, z = 0 }},
	},
	interacts = {
		[1] = {contentid = 718, priority = 1, type = "Loot"},
		-- Sephirot Weapons, Fiend Sap, Warring Lanner Whistle & Faded Copy of Fiend
	},
	bossids = {
		4776, -- Sephirot -- Sephirot Card & (Sephirot Sap (Synced Only))
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (KitanoiFuncs.HowManyAOES() == 0 and Player.incombat and not Player:GetTarget()) then
						Player:MoveTo(0, 0, 0)
						KitanoiSettings.avoidingtime = Now()
					end
				end
			]],
		},
	},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {},
	meshchange = {},
}

return tbl
