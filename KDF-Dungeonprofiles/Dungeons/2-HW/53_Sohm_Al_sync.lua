local tbl = {
	name = "Sohm Al",
	mesh = "[HM] - Sohm Al",
	dutyid = 1064,
	level = 53,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -123.86000061035, y = 11.989999771118, z = 161.16999816895}},
		[2] = {objective = 2, pos = {x = 157, y = 137.60000610352, z = -105}},
		[3] = {objective = 3, pos = {x = -103.5, y = 348.16000366211, z = -395.85998535156}},
	},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 427, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 423, priority = 2, type = "Loot 1"},
		[3] = {contentid = 424, priority = 3, type = "Loot 2"},
		[4] = {contentid = 428, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 425, priority = 5, type = "Loot 3"},
		[6] = {contentid = 426, priority = 6, type = "Loot 4"},
		[7] = {contentid = 429, priority = 7, type = "Boss 3 Loot"}, -- Gaelikitten
	},
	bossids = {
		3791, -- Raskovnik
		3793, -- Myath
		3798, -- Tioman -- Tioman Card & Slumber Eternal Orchestrion Roll
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3803, priority = 2, type = "Drakespur"}, -- Comment if path to first boss too hard
		[2] = {contentid = 3444, priority = 2, type = "Hornets"},
		[3] = {contentid = 3812, priority = 3, type = "Ice Spikes"},
		[4] = {contentid = 3026, priority = 4, type = "Glacial Sprite"},
		[5] = {contentid = 3794, priority = 5, type = "Green Add"},
		[6] = {contentid = 3797, priority = 6, type = "Red Add"},
		[7] = {contentid = 3769, priority = 7, type = "Blue Add"},
		[8] = {contentid = 4389, priority = 8, type = "Right Wing"},
		[9] = {contentid = 4388, priority = 9, type = "Left Wing"},
	},
	ignoretarget = {3802},
	avoidentity = {
		[1] = {contentid = 3802, desc = "Pollen Cluster", radius = 5},
	},
	tankat = {
		[1] = {contentid = 3791, desc = "tank first boss", frompercent = 100, pos = {x = -123.86, y = 11.99, z = 161.17}, topercent = 0},
		[2] = {contentid = 3793, desc = "tank second boss", frompercent = 100, pos = {x = 157, y = 137.6, z = -105}, topercent = 0},
		[3] = {contentid = 3798, desc = "tank last boss", frompercent = 100, pos = {x = -99.6, y = 348.15, z = -402}, topercent = 0},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local ray1 = {x = 336, y = 116, z = -92}
					local ray2 = {x = 321, y = 117, z = -95}
					if (not Player.incombat and math.distance2d(ray1, Player.pos) < 25 and KitanoiFuncs.CheckRayCast(ray1, ray2)) then
						Player:Stop()
						d("Waiting on dragon to land - fire")
						KitanoiFuncs.targettime = Now()
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local ray1 = {x = 236, y = 129, z = -29}
					local ray2 = {x = 216, y = 132, z = -32}
					if (not Player.incombat and math.distance2d(ray1, Player.pos) < 25 and KitanoiFuncs.CheckRayCast(ray1, ray2)) then
						Player:Stop()
						d("Waiting on dragon to land - ice")
						KitanoiFuncs.targettime = Now()
					end
				end
			]]
		},
		--[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
		--		function customfunction()
		--			KitanoiFuncs.LoadMesh("[HM] - Sohm Al")
		--		end
		--	]]
		--},
		[4] = {castingid = 3809, creatordesc = "", type = "duty"},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			contentid = "3793",
			desc = "stack",
			detectwho = "any",
			id = 62,
			movetoentity = true,
			timetoreturn = 8,
			type = "move",
		},
		[2] = {
			contentid = "3793",
			desc = "stack",
			detectwho = "any",
			id = 23,
			pos = {
				[1] = {x = 160.96, y = 137.6, z = -84},
				[2] = {x = 160.96, y = 137.6, z = -84},
				[3] = {x = 160.96, y = 137.6, z = -84},
				[4] = {x = 160.96, y = 137.6, z = -84},
			},
			timetoreturn = 0,
			type = "move",
		},
		[3] = {
			contentid = "3798",
			desc = "stack",
			detectwho = "me",
			id = 7,
			pos = {
				[1] = {x = -111, y = 348.29, z = -371},
				[2] = {x = -100, y = 348.29, z = -418},
				[3] = {x = -130, y = 348.29, z = -400},
				[4] = {x = -80, y = 348.29, z = -385},
			},
			returnpos = {
				[1] = {x = -125, y = 348.29, z = -381},
				[2] = {x = -83.27, y = 348.29, z = -407.5},
				[3] = {x = -116.91, y = 348.29, z = -416},
				[4] = {x = -90.5, y = 348.29, z = -374.18},
			},
			timetoreturn = 8,
			type = "move",
		},
	},
	tethers = {},
	excludeavoid = {3809},
	limitbreak = {},
	puddledata = {},
	enemylos = true,
}

return tbl