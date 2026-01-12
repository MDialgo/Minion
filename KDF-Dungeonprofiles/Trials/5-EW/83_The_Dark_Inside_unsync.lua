local tbl = {
	name = "The Dark Inside (Story) US",
	mesh = "[Trial] The Dark Inside",
	dutyid = 992,
	level = 83,
	expansion = 6,
	creator = "Kitanoi",
	notes = "Requires 8 accounts, requires Exe.\nExtremely healer intensive during styx, if your healer ACR cannot handle it, manually heal on 1 character. Or take 3 healers and 1 tank.",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 98, y = 0, z = 115}},
	},
	interacts = {},
	bossids = {
		10456, -- Zodiark -- Zodiark Card
	},
	forcemeleerange = {10456},
	enemytargetdistance = 80,
	prioritytarget = {},
	tankat = {
		[1] = {contentid = 10456, desc = "Tank Zodiark at this pos from 100-1%", frompercent = 100, pos = {x = 115.25, y = 0, z = 85.41}, topercent = 0},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "316", "false") == true) then
						if (ActionList:Get(131):IsReady()) then
							ActionList:Get(131):Cast(Player.id)
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "316", "false") == true) then
						if (ActionList:Get(25873):IsReady()) then
							ActionList:Get(25873):Cast(Player.id)
						end
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "316", "false") == true) then
						if (ActionList:Get(3600):IsReady()) then
							ActionList:Get(3600):Cast(Player.id)
						end
					end
				end
			]]
		},
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "316", "false") == true) then
						if (ActionList:Get(124):IsReady()) then
							ActionList:Get(124):Cast(Player.id)
						end
					end
				end
			]]
		},
		[5] = {type = "custom", customdetails = "libraryfunction",functioncode = "KitanoiFuncs.ZodiarkStory()"},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			contentid = "10456",
			desc = "Ania",
			detectwho = "me",
			id = 218,
			pos = {[1] = {x = 83.2, y = 0, z = 85.8}},
			returnpos = {[1] = {x = 115.8, y = 0, z = 85.8}},
			timetoreturn = 10,
			type = "move",
		},
		[2] = {
			contentid = "10456",
			desc = "Styx",
			detectwho = "any",
			id = 316,
			pos = {
				[1] = {x = 100, y = 0, z = 100},
				[2] = {x = 100, y = 0, z = 100},
				[3] = {x = 100, y = 0, z = 100},
				[4] = {x = 100, y = 0, z = 100},
				[5] = {x = 100, y = 0, z = 100},
				[6] = {x = 100, y = 0, z = 100},
				[7] = {x = 100, y = 0, z = 100},
				[8] = {x = 100, y = 0, z = 100},
			},
			returnpos = {},
			timetoreturn = 10,
			type = "move",
		},
	},
	excludeavoid = {},
	dontexcludeaoe = {26579},
	limitbreak = {
		[1] = {contentid = 10456, level = 1, percent = 15, type = "ranged"},
		[2] = {contentid = 10456, level = 2, percent = 15, type = "ranged"},
		[3] = {contentid = 10456, level = 3, percent = 15, type = "ranged"},
	},
	meleeavoid = false,
}

return tbl