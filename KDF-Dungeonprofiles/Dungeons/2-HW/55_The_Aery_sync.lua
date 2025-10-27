local tbl = {
	name = "The Aery",
	mesh = "[Dungeon] The Aery",
	dutyid = 1065,
	level = 55,
	expansion = 3,
	creator = "Kitanoi/Zachie",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 321.79998779297, y = 93.98999786377, z = -199.66000366211}},
		[2] = {objective = 2, pos = {x = 321.79998779297, y = 93.98999786377, z = -199.66000366211}},
		[3] = {objective = 3, pos = {x = 12.170000076294, y = 59.650001525879, z = 68.069999694824}},
		[4] = {objective = 4, pos = {x = 12.170000076294, y = 59.650001525879, z = 68.069999694824}},
		[5] = {objective = 5, pos = {x = 38.560001373291, y = 148.38999938965, z = -270.07998657227}},
		[6] = {objective = 6, pos = {x = 38.560001373291, y = 148.38999938965, z = -270.07998657227}},
	},
	interacts = {
		[1] = {contentid = 460, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 456, priority = 2, type = "Loot 1"},
		[3] = {contentid = 457, priority = 3, type = "Loot 2"},
		[4] = {contentid = 461, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 458, priority = 5, type = "Loot 3"},
		[6] = {contentid = 459, priority = 6, type = "Loot 4"},
		[7] = {contentid = 462, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		3452, -- Rangda
		3455, -- Gyascutus
		3458, -- Nidhogg
	},
	forcemeleerange = {3452,3458,3455},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3453, priority = 1, type = "First Boss Adds"},
		[2] = {contentid = 3456, priority = 2, type = "Second Boss Adds"},
		[3] = {contentid = 3460, priority = 3, type = "Third Boss Adds"},
		[4] = {contentid = 3461, priority = 4, type = "Third Boss Adds"},
		[5] = {contentid = 3462, priority = 5, type = "Third Boss Adds"},
		[6] = {contentid = 3463, priority = 6, type = "Third Boss Adds"},
		[7] = {contentid = 3464, priority = 7, type = "Third Boss Adds"},
	},
	tankat = {
		[1] = {contentid = 3452, desc = "tank first boss away from party from 100-0%", frompercent = 100, pos = {x = 321.8, y = 93.99, z = -199.66}, topercent = 0},
		[2] = {contentid = 3458, desc = "tank last boss away from party from 100-0%", frompercent = 100, pos = {x = 30.38, y = 148.39, z = -281.19}, topercent = 0},
	},
	advancedavoid = {
		--[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
		--		function customfunction()
		--			KitanoiFuncs.LoadMesh("[Dungeon] The Aery")
		--		end
		--	]]
		--},
		[2] = {castingid = 3910, desc = "last boss hide with estenien", pos = {[1] = {x = 38.08, y = 148.39, z = -244.93}}, type = "singlefixed"},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					if (targ and targ.contentid == 3452) then
						if (KitanoiFuncs.HasTether()) then
							local pillars = MEntityList(\"contentid=3454,nearest,maxdistance=30\")
							if (pillars ~= nil) then
								for i, e in pairs(pillars) do
									if (e ~= nil) then
										Player:MoveTo(e.pos.x, e.pos.y, e.pos.z)
										KitanoiSettings.avoidingtime = Now() + 1000
									end
								end
							end
						end
					end
				end
			]]
		},
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					if (Player.incombat and targ and targ.contentid == 3455) then
						KitanoiFuncs.DonutPoly2(12, 60, 68, 30, 18, 0, targ, 98754646841, 60)
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			contentid = 3458,
			desc = "stacking",
			detectwho = "any",
			id = 317,
			movetoentity = true,
			precise = false,
			timetoreturn = 7,
			type = "move",
		},
	},
	excludeavoid = {30224},
	staybehindentity = {3452,3458},
	puddledata = {
		[1] = {castid = 3899, desc = "Puddle left at second boss", duration = 60, radius = 6},
	},
}

return tbl