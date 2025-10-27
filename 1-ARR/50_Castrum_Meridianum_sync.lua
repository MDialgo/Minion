local tbl = {
	name = "Castrum Meridianum",
	mesh = "[Dungeon] Castrum Meridianum v2",
	dutyid = 1043,
	level = 50,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 13, y = 70, z = -41}},
		[2] = {objective = 2, pos = {x = 13, y = 70, z = -41}},
		[3] = {objective = 3, pos = {x = -14, y = 70, z = 25}},
		[4] = {objective = 4, pos = {x = -14, y = 70, z = 25}},
		[5] = {objective = 5, pos = {x = -100, y = 72, z = -33}},
		[6] = {objective = 6, pos = {x = -100, y = 72, z = -33}},
	},
	interacts = {
		[1] = {contentid =  2000597, priority = 1, type = "Disposal Chute", req = {objective = 4, complete = false}},
	},
	bossids = {
		557, -- The Black Eft
		2116, -- Magitek Vanguard F-1
		2118, -- Livia sas Junius -- Livia sas Junius Card
	},
	forcemeleerange = {557,2116},
	enemytargetdistance = 45,
	prioritytargetdistance = 45,
	prioritytarget = {
		[1] = {contentid = 297, priority = 1, type = "Magitek Colossus"},
		[2] = {contentid = 2109, priority = 2, type = "8th Cohort Signifier"},
		[3] = {contentid = 2106, priority = 3, type = "8th Cohort Laquearius"},
	},
	avoidentity= {},
	tankat = {},
	useaction = {},
	advancedavoid = {
	--	[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
	--			function customfunction()
	--				KitanoiFuncs.LoadMesh("[KDF] - Castrum Meridianum 6.1")
	--			end
	--		]]
	--	},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local cast1 = KitanoiFuncs.ScanForCaster2(29163)
					local cast2 = KitanoiFuncs.ScanForCaster2(28787)
					if (cast1 and cast2) then
						KitanoiNavigation.NavAPI.MoveTo(-87, 72, -35)
						KitanoiSettings.avoidingtime = Now()
					end
				end
			]]
		},
	},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {},
	limitbreak = {},
	staybehindentity = {},
}

return tbl