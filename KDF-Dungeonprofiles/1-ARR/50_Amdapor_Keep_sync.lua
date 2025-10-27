local tbl = {
	name = "Amdapor Keep",
	mesh = "[Dungeon] Amdapor Keep",
	dutyid = 167,
	level = 50,
	expansion = 2,
	creator = "Arivi/Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -29.79, y = 0.00, z = -0.09}}, -- first boss
		[2] = {objective = 2, pos = {x = 200.40, y = 22.00, z = -138.04}}, -- second boss
		[3] = {objective = 3, pos = {x = -8.28, y = 48.00, z = -0.08}}, -- third boss
	},
	interactdistance = 80, -- minimum 80 for Loot 1, 55 for the Amdapori Stone
	interacts = {
		[1] = {contentid = 186, priority = 1, type = "Loot 1"}, -- Demon Brick
		[2] = {contentid = 189, priority = 2, type = "Boss 1 Loot"},
		--[3] = {contentid = 187, priority = 3, type = "Loot 2"}, -- Too out of the way/interfere with Loot 1
		[4] = {contentid = 188, priority = 4, type = "Loot 3"},
		[5] = {contentid = 213, priority = 5, type = "Loot 4"}, -- Amdapori Stone
		[6] = {contentid = 190, priority = 6, type = "Boss 2 Loot 1"},
		[7] = {contentid = 191, priority = 7, type = "Boss 2 Loot 2"},
		[8] = {contentid = 192, priority = 8, type = "Boss 3 Loot"}, -- Cracks in the Wall Orchestrion Roll
	},
	bossids = {
		1689, -- Psycheflayer
		1694, -- Demon Wall
		1696, -- Anantaboga -- Demon Wall Card
	},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 1697, priority = 1, type = "Boss 3 Adds"},
	},
	dontclearfriendlytargets = {2000500,2000501},
	tankat = {
		[1] = {contentid = 1689, frompercent = 100, topercent = 0, pos = {x = -47.40, y = 0.10, z = 0.07}, desc = "tank the 1st Boss here"},
		[2] = {contentid = 1696, frompercent = 100, topercent = 0, pos = {x = 2.37, y = 48.13, z = 0.12}, desc = "tank the 3rd Boss here"},
	},
	faceenemyaway = {29},
	advancedavoid = {
		[1] = {castingid = 1047, type = "moveinfront"},
		[2] = {castingid = 1074, type = "multifixed", -- Imminent Catastrophe
			pos = {
				[1] = {x = 23.79, y = 48.17, z = -16.03},
				[2] = {x = 23.79, y = 48.17, z = -16.03},
				[3] = {x = 23.85, y = 48.17, z = 16.27},
				[4] = {x = 23.85, y = 48.17, z = 16.27}
			}
		},
		--[3] = {type = "custom", customdetails = "function", functionname = "Loot 1 Detector (Minion)", functioncode =
			--[[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList('contentid=186,maxdistance=80,targetable')
					if (wall and not Player.incombat) then
						for k,v in pairs(wall)do
							if math.distance3d(Player.pos,v.pos)>5 then
								Player:MoveTo(v.pos.x,v.pos.y,v.pos.z)
								break
							end
						end
					end
				end
			]]
		--}, -- Use this or change interactdistance to 80 but not with Loot 2 activated
	},
	excludeavoid = {1047},
	staybehindentity = {1696},
}

return tbl