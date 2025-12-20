local tbl = {
	name = "The Sunken Temple of Qarn",
	mesh = "[Dungeon] The Sunken Temple of Qarn",
	dutyid = 1267,
	level = 35,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -70.00, y = -11.95, z = -62.00 }},
		[2] = {objective = 2, pos = {x = 53.52, y = -49.46, z = 1.22}},
		[3] = {objective = 3, pos = {x = 53.52, y = -49.46, z = 1.22}},
		[4] = {objective = 4, pos = {x = 243.00, y = -4.00, z = 0.00}},
		[5] = {objective = 5, pos = {x = 243.00, y = -4.00, z = 0.00}},
	},
	interactdistance = 65,
	interacts = { -- WIP to get every chest
		[1] = {contentid = 2000418, req = {complete = false, objective = 1}, priority = 1, type = "The Helm of Might"},
		[2] = {contentid = 135, priority = 2, type = "Loot 1"},
		[3] = {contentid = 2000417, req = {complete = false, objective = 1}, priority = 3, type = "The Gem of Affluence"},
		[4] = {contentid = 136, priority = 4, type = "Boss 1 Loot"},
		[5] = {contentid = 2000415, req = {complete = true, objective = 2}, priority = 5, type = "The Flame of Magic"},
		[6] = {contentid = 2000416, req = {complete = true, objective = 2}, priority = 6, type = "The Fruit of Knowledge"},
		[7] = {contentid = 137, priority = 7, type = "Boss 2 Loot"},
		--[8] = {contentid = 2000423, req = {complete = true, objective = 3}, priority = 8, type = "Stone Pedestal - Gem of Affluence"}, -- 1
		--[9] = {contentid = 129, priority = 9, type = "Statuette Loot 1"}, -- Shards -- Belah'dian Glass
		--[10] = {contentid = 2000425, req = {complete = true, objective = 3}, priority = 10, type = "Stone Pedestal - Helm of Might"}, -- 0
		--[11] = {contentid = 128, priority = 11, type = "Statuette Loot 2"}, -- Shards -- Belah'dian Glass
		--[12] = {contentid = 2000421, req = {complete = true, objective = 3}, priority = 12, type = "Stone Pedestal - Fruit of Knowledge"}, -- 3
		--[13] = {contentid = 131, priority = 13, type = "Statuette Loot 3"}, -- Shards -- Belah'dian Glass
		[14] = {contentid = 2000419, req = {complete = true, objective = 3}, priority = 14, type = "Stone Pedestal - Flame of Magic"}, -- 2
		[15] = {contentid = 130, priority = 15, type = "Statuette Loot 4"}, -- Shards -- Belah'dian Glass
		[16] = {contentid = 2000427, req = {complete = true, objective = 3}, priority = 16, type = "Left Pan - Flame of Magic"}, -- 2
		[17] = {contentid = 2000428, req = {complete = true, objective = 3}, priority = 17, type = "Right Pan - Fruit of Knowledge"}, -- 2
		[18] = {contentid = 2000658, req = {complete = true, objective = 3}, priority = 18, type = "The Scales of Judgment"},
		--[19] = {contentid = 133, req = {complete = true, objective = 4}, priority = 19, type = "Loot 2"}, -- Out of Mesh WIP
		--[20] = {contentid = 132, req = {complete = true, objective = 4}, priority = 20, type = "Loot 3"}, -- Shards -- Belah'dian Glass -- Out of Mesh WIP
		--[21] = {contentid = 134, req = {complete = true, objective = 4}, priority = 21, type = "Loot 4"}, -- Out of Mesh WIP
		[22] = {contentid = 138, priority = 22, type = "Boss 3 Loot"}, -- Belah'dian Glass & Echoes of Ages Past Orchestrion Roll
	},
	bossids = {
		1567, -- Teratotaur
		1569, -- Temple Guardian
		1570, -- Adjudicator
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 1490, priority = 1, type = "Golem Soulstone"},
		[2] = {contentid = 1798, priority = 1, type = "Mythril Verge"},
	},
	ignoretarget = {},
	dontclearfriendlytargets = {2000423,2000425,2000421,2000419,2000427,2000428},
	advancedavoid =	{
		[1] = {type = "custom", customdetails = "function", functionname = "Boss 1 Doom Dispell", functioncode = [[
				local hasdoom = HasBuff(Player.id, 5187)
				local AOECount = KitanoiFuncs.HowManyAOES(true)
				if (hasdoom and AOECount == 0) then
					local ents = KitanoiFuncs.MEntityList("contentid=2000866;2000867;2000868")
					if (ents) then
						for i, e in pairs(ents) do
							if (i and e and e.eventid == 0 and math.distance2d(Player.pos, e.pos) > 0.8) then
								local point = e.pos
								if (not Player:IsMoving()) then
									local npoint = KitanoiFuncs.randompointInCircle(e.pos.x, e.pos.z, 0.7)
									point.x = npoint.x
									point.z = npoint.z
								end
								KitanoiNavigation.NavAPI.MoveTo(point.x, point.y, point.z)
								KitanoiSettings.avoidingtime = Now() + 2000
							end
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "Place Statuettes", functioncode = [[
				function customfunction()
					if IsControlOpen("SelectString") then
						UseControlAction("SelectString","SelectIndex",2)
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
	enemylos = true,
}


return tbl
