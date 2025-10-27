local tbl = {
	name = "Halatali",
	mesh = "[Dungeon] Halatali v2",
	dutyid = 1245,
	level = 20,
	expansion = 2,
	creator = "Latty79",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 26.17, y = 0.93, z = 126.78}}, -- Clear the Hall of the Cesti
		[2] = {objective = 2, pos = {x = -183.55, y = -15.31, z = -130.79}}, -- Activate the chain winches
		[3] = {objective = 3, pos = {x = -183.55, y = -15.31, z = -130.79}}, -- Clear the Hall of the Secutores
		[4] = {objective = 4, pos = {x = -271.13, y = 17.23, z = 19.96}}, -- Defeat Tangata
	},
	interactdistance = 45,
	interacts = {
		--[1] = {contentid = 86, req = {}, priority = 1, type = "Loot 1"}, -- Too out of the way
		[2] = {contentid = 89, req = {objective = 1, complete = true}, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 2001619, req = {objective = 1, complete = true}, priority = 3, type = "Aetherial Flow"},
		[4] = {contentid = 2001624, req = {objective = 2, complete = false}, priority = 4, type = "Chain Winch 1"},
		[5] = {contentid = 113, req = {objective = 2, complete = false}, priority = 5, type = "Chain Winch Loot 1"},
		[6] = {contentid = 2001625, req = {objective = 1, complete = true}, priority = 6, type = "Chain Winch 2"},
		[7] = {contentid = 114, req = {objective = 2, complete = false}, priority = 7, type = "Chain Winch Loot 2"},
		[8] = {contentid = 2001626, req = {objective = 2, complete = false}, priority = 8, type = "Chain Winch 3"},
		[9] = {contentid = 115, req = {objective = 2, complete = false}, priority = 9, type = "Chain Winch Loot 3"},
		--[10] = {contentid = 87, req = {objective = 2, complete = false}, priority = 10, type = "Loot 2"}, -- Too out of the way
		[11] = {contentid = 2001627, req = {objective = 2, complete = false}, priority = 11, type = "Chain Winch 4"},
		[12] = {contentid = 116, req = {objective = 2, complete = false}, priority = 12, type = "Chain Winch Loot 4"},
		[13] = {contentid = 2001628, req = {objective = 2, complete = false}, priority = 13, type = "Chain Winch 5"},
		[14] = {contentid = 117, req = {objective = 2, complete = false}, priority = 14, type = "Chain Winch Loot 5"},
		[15] = {contentid = 90, req = {objective = 4, complete = false}, priority = 15, type = "Boss 2 Loot 1"},
		[16] = {contentid = 91, req = {objective = 4, complete = false}, priority = 16, type = "Boss 2 Loot 2"},
		[17] = {contentid = 2001647, req = {objective = 4, complete = false}, priority = 17, type = "Aetherial Flow"},
		--[18] = {contentid = 88, req = {objective = 4, complete = false}, priority = 18, type = "Loot 3"}, -- Too out of the way
		[19] = {contentid = 2001623, req = {objective = 4, complete = false}, priority = 19, type = "Ludus Door"},
		[20] = {contentid = 92, priority = 20, type = "Boss 3 Loot"}, -- The Ludus Orchestrion Roll
	},
	bossids = {
		1194, -- Firemane
		1196, -- Thunderclap Guivre
		1197, -- Tangata
	},
	forcemeleerange = {1197},
	enemytargetdistance = 20,
	prioritytargetdistance = 35,
	prioritytarget = {
		[1] = {contentid = 1187, priority = 1, type = "Damantus"},
		[2] = {contentid = 1195, priority = 2, type = "Noxious"},
		[3] = {contentid = 1197, priority = 3, type = "Tangata"},
	},
	avoidentity = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Boss 2 & 3 Mechanics", functioncode = [[
				local targ = Player:GetTarget()
				if
					(Player.incombat and KitanoiSettings.SavedMapEffects["112"] ~= nil and
						TimeSince(KitanoiSettings.SavedMapEffects["112"].timeadded) < 10000)
				then
					local point = {x = -183.28, y = -14.27, z = -111.05}
					KitanoiNavigation.NavAPI.MoveTo(point.x, point.y, point.z)
					KitanoiSettings.avoidingtime = Now() + 2000
				end
				local firstcircle = KitanoiFuncs.ScanForCaster2(40599)
				if (firstcircle) then
					KitanoiFuncs.TempBlackListAOE[40600] = {
						aoeID = 40600,
						removeat = KitanoiFuncs.Now() + 1000,
						forceremove = 1000
					}
					KitanoiSettings.ExcludeAOES[40600] = true
					KitanoiFuncs.TempBlackListAOE[40601] = {
						aoeID = 40601,
						removeat = KitanoiFuncs.Now() + 1000,
						forceremove = 1000
					}
					KitanoiSettings.ExcludeAOES[40601] = true
					KitanoiFuncs.API.RemoveAOEbyAOEID(40600)
					KitanoiFuncs.API.RemoveAOEbyAOEID(40601)
				else
					KitanoiFuncs.TempBlackListAOE[40600] = nil
					KitanoiSettings.ExcludeAOES[40600] = nil
					KitanoiFuncs.TempBlackListAOE[40601] = nil
					KitanoiSettings.ExcludeAOES[40601] = nil
				end
			]],
		},
	},
	reactions = {},
	overheadmarkers = {},
	overrideaoedetails = {
		innerrad = {
			[40600] = 10,
			[40601] = 20,
		},
	},
	autoblacklist = true,
}
return tbl
