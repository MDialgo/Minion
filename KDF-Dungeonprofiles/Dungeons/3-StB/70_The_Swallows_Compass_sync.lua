local tbl = {
	name = "The Swallow's Compass",
	mesh = "[Dungeon] The Swallow's Compass v2",
	dutyid = 768,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= -240.559, y= -480.119, z= 39.759}},
		[2] = {objective = 2, pos = {x= -239.89, y= -480.00, z= -4.02}},
		[3] = {objective = 3, pos = {x= 26.036, y= 0.219, z= 338.127}},
		[4] = {objective = 4, pos = {x= 26, y= 0, z= 302}},
		[5] = {objective = 5, pos = {x= 15.048, y= 73, z= -215.513}},
		[6] = {objective = 6, pos = {x= 14.95, y= 73.13, z= -252.18}},
	},
	interacts = {
		[1] = {contentid = 2009461, priority = 1, req = {objective = 1, complete = false}, type = "Dragon's Seal"},
		[2] = {contentid = 1029, priority = 2, req = {objective = 2, complete = true}, type = "Boss 1 Loot"},
		[3] = {contentid = 2009459, priority = 3, req = {objective = 2, complete = true}, type = "Geomantic Aetheryte"},
		[4] = {contentid = 1025, priority = 4, req = {objective = 2, complete = true}, type = "Loot 1"},
		[5] = {contentid = 1026, priority = 5, req = {objective = 2, complete = true}, type = "Loot 2"},
		[6] = {contentid = 2009460, priority = 6, req = {objective = 2, complete = true}, type = "Geomantic Aetheryte"},
		[7] = {contentid = 1030, priority = 7, req = {objective = 4, complete = true}, type = "Boss 2 Loot"},
		[8] = {contentid = 1027, priority = 8, req = {objective = 4, complete = true}, type = "Loot 3"},
		[9] = {contentid = 1028, priority = 9, req = {objective = 4, complete = true}, type = "Loot 4"},
		[10] = {contentid = 1031, priority = 10, req = {}, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		7200, -- Otengu
		7202, -- Daidarabotchi
		7203, -- Qitian Dasheng
		7204, -- Shadow of the Sage
	},
	forcemeleerange= {7206, 7203, 7204},
	enemytargetdistance = 50,
	prioritytarget = {},
	avoidentity = {},
	tankat= {
		[1] = {contentid = 7200, frompercent = 100, topercent = 1, pos = {x = -244.55, y = -480, z = -0.057}, desc = "tank Otengu 7200 at this pos from 100-1%"},
		[2] = {contentid = 7204, frompercent = 100, topercent = 1, pos = {x = -244.55, y = -480, z = -0.057}, desc = "tank Shadow of Sage 7204 at this pos from 100-1%"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode =
			[[
				function customfunction()
					local cast = KitanoiFuncs.ScanForCast2(11172, 5)
					if (cast and Player.incombat and KitanoiFuncs.API.IsOnAggroList("7202")) then
						if (KitanoiFuncs.CurrentAOEs[18911165165161] == nil) then
							d("PUDDILE")
							Argus2.addTimedCircleFilled(
								30000,
								26.59,
								0,
								313.32,
								12,
								30,
								GUI:ColorConvertFloat4ToU32(1, 0.5, 0.5, 0.2),
								GUI:ColorConvertFloat4ToU32(1, 0.25, 0.25, 0.5)
							)
							KitanoiFuncs.CurrentAOEs[18911165165161] = {
								type = "circle",
								entity = 18911165165161,
								target = 0,
								aoeID = 18911165165161,
								radius = 12,
								name = "thing",
								pos = {x = 26.59, y = 0, z = 313.32},
								casttime = 30,
								channelingtime = 0,
								deletetime = Now() + 30000
							}
						end
					end
				end
			]]
		},
	},
	hasbuff = {
		[1] = {type = "move", buffid = 375, pos = {[1] = {x = -244.55, y = -480, z = -0.057}}},
		[2] = {type = "move", buffid = 320, pos = {[1] = {x= 14.95, y= 73.13, z= -252.18}}},
	},
	overheadmarkers = {},
	excludeavoid = {
		11270 --Pushing water
	},
}

return tbl