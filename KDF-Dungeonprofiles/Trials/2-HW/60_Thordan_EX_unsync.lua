local tbl = {
	name = "Thordan Ex",
	mesh = "",
	dutyid = 448,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "Does not evade the growing aoes leading to death of Trial characters",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.00, y = 0.00, z= 0.4}},
	},
	interacts = {
		[1] = {contentid = 523, priority = 1, type = "Loot"},
		-- "Of the Heavens" Weapons, Round Lanner Whistle & Faded Copy of Heroes
	},
	bossids = {
		3632, -- King Thordan -- Archbishop Thordan VII Card
	},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 3632, priority = 1, type = "Thordan"},
	},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (KitanoiFuncs.HowManyAOES() == 0 and Player.incombat and not Player:GetTarget()) then
						Player:MoveTo(0.00, y= 0.00, z= 0.4)
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
