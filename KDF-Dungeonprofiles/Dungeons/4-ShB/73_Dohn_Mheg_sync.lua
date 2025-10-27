local tbl = {
	name = "Dohn Mheg",
	mesh = "",
	dutyid = 821,
	level = 73,
	expansion = 5,
	creator = "Koyote#6642/Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.01531982421875, y = 6.8503556251526, z = 30.136596679688}},
		[2] = {objective = 2, pos = {x = 7.1564331054688, y = 23.04288482666, z = -351.12539672852}},
		[3] = {objective = 3, pos = {x = 7, y = 23, z = -338}},
		[4] = {objective = 4, pos = {x = 7, y = 23, z = -338}},
		[5] = {objective = 5, pos = {x = -128, y = -144, z = -243}},
		[6] = {objective = 6, pos = {x = -128, y = -144, z = -243}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 1143, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1139, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1140, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1144, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1141, priority = 5, type = "Loot 3"},
		[6] = {contentid = 2009760, priority = 6, type = "Shell Crown"},
		[7] = {contentid = 1142, priority = 7, type = "Loot 4"},
		[8] = {contentid = 1145, priority = 8, type = "Boss 3 Loot"}, -- Tiny Echevore, Figments Orchestrion Roll & Dohn Trellis
	},
	bossids = {
		8141, -- Aenc Thon, Lord of the Lingering Gaze
		8143, -- Griaule
		8146, -- Aenc Thon, Lord of the Lengthsome Gait
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 8145, priority = 1, type = "Painted Root"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction",functioncode = [[
				function customfunction()
					if (ScanForCaster("", "80", 13520, "false") == true or HasBuff(Player.id, 715)) then
						if (FFXIV_Common_NavMesh ~= "[Dungeon] Dohn Mheg - Tightrope") then
							FFXIV_Common_NavMesh = "[Dungeon] Dohn Mheg - Tightrope"
							ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)
						end
					elseif (ScanForCaster("", "80", 13520, "false") == false) then
						if (FFXIV_Common_NavMesh ~= "[HM] - Dohn Mheg") then
							FFXIV_Common_NavMesh = "[HM] - Dohn Mheg"
							ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction",functioncode = [[
				function customfunction()
					if (ScanForCaster("", "80", 13520, "false") == true) then
						if (FFXIV_Common_NavMesh ~= "[Dungeon] Dohn Mheg - Tightrope") then
							KitanoiNavigation.NavAPI.Stop()
						end
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction",functioncode = [[
				function customfunction()
					if (ScanForCaster("", "80", 13520, "false") == true) then
						if (FFXIV_Common_NavMesh == "[Dungeon] Dohn Mheg - Tightrope") and not Player:IsMoving() then
							KitanoiNavigation.NavAPI.MoveTo(-128.5, -144.5, -256)
							KitanoiSettings.avoidingtime = Now()
						end
						if (Player:IsMoving()) then
							Player:ClearTarget()
							KitanoiFuncs.greenmarker = Now()
						end
					end
				end
			]]
		},
		[4] = {type = "custom", customdetails = "libraryfunction", functioncode = "KitanoiFuncs.DohnMheg()"},
		[5] = {type = "custom", customdetails = "function", functionname = "customfunction",functioncode = [[
				function customfunction()
					if (ScanForCaster("", "80", 8915, "false") == true and TableSize(Argus.getCurrentTethers()) == 0) then
						if (KitanoiFuncs.ReturnSortedParty()[1] == Player.id) then
							KitanoiNavigation.NavAPI.MoveTo(6.8, 23, -331)
							KitanoiSettings.avoidingtime = Now()
						elseif (KitanoiFuncs.ReturnSortedParty()[2] == Player.id) then
							KitanoiNavigation.NavAPI.MoveTo(0.6, 23, -339)
							KitanoiSettings.avoidingtime = Now()
						elseif (KitanoiFuncs.ReturnSortedParty()[3] == Player.id) then
							KitanoiNavigation.NavAPI.MoveTo(7, 23, -346)
							KitanoiSettings.avoidingtime = Now()
						elseif (KitanoiFuncs.ReturnSortedParty()[4] == Player.id) then
							KitanoiNavigation.NavAPI.MoveTo(13, 23, -339)
							KitanoiSettings.avoidingtime = Now()
						end
					end
				end
			]]
		},
		[6] = {castingid = 8901, type = "singlefixed", pos = {[1] = {x = 7,y = 23,z = -339}}},
		[7] = {castingid = 8146, type = "movebehind", desc = "Description"},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "8141",
			desc = "stack boss 1",
			detectwho = "any",
			movetoentity = true,
			precise = false,
			timetoreturn = 6,
			type = "move",
		},
	},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
	forcemove = {
		[1] = {desc = "handle movement to on bridge and omc", movetopos = {x = 6.5, y = 19.3, z = -454.3},
			polygon = {
				[1] = {x = 2.61, y = 19.3, z = -407.8},
				[2] = {x = 12.2, y = 19.3, z = -408.36},
				[3] = {x = 12.2, y = 19.3, z = -451.85},
				[4] = {x = 2.61, y = 19.3, z = -451.85},
			},
		},
	},
}

return tbl