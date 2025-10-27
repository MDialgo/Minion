local tbl = {
	name = "Sephirot Ex",
	dutyid = 524,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0, z = 0 }},
	},
	interacts = {
		[1] = {priority = 1, contentid = 718, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	enemytargetdistance = 50,
	bossids = {4776},
	prioritytarget = {},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				function customfunction()
					if (KitanoiFuncs.HowManyAOES() == 0 and Player.incombat and not Player:GetTarget()) then
						Player:MoveTo(0, 0, 0)
						KitanoiSettings.avoidingtime = Now()
					end
				end
			]],
		},
	},
	meshchange = {},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {},
}

return tbl
