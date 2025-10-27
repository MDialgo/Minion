local tbl = {
	name = "Copperbell Mines (Hard)",
	mesh = "[Dungeon] Copperbell Mines (Hard)",
	dutyid = 349,
	level = 50,
	expansion = 2,
	creator = "Prostar",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 75.91918182373, y = -12, z = -86.778259277344}},
		[2] = {objective = 2, pos = {x = 26.959539413452, y = -37.928901672363, z = 114.71294403076}},
		[3] = {objective = 3, pos = {x = -99.915191650391, y = -57.781848907471, z = -2.5699677467346}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 2002901, priority = 1, type = "Lift lever incase the lift is down"},
		[2] = {contentid = 2002902, priority = 2, type = "Lift lever"},
		[3] = {contentid = 238, priority = 3, type = "Loot 1"}, -- Slime Puddle
		[4] = {contentid = 242, priority = 4, type = "Boss 1 Loot"},
		[5] = {contentid = 239, priority = 5, type = "Loot 2"},
		[6] = {contentid = 243, priority = 6, type = "Boss 2 Loot"},
		[7] = {contentid = 240, priority = 7, type = "Loot 3"},
		[8] = {contentid = 241, priority = 8, type = "Loot 4"},
		[9] = {contentid = 245, priority = 9, type = "Boss 3 Loot"}, -- Faded Copy of The Dark's Embrace
	},
	bossids = {
		2282, -- Hecatoncheir Mastermind
		2285, -- Gogmagolem
		2286, -- Biggy
		2289, -- Ouranos
	},
	forcemeleerange = {2293,2271},
	enemytargetdistance = 30,
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 983, priority = 1, type = "Flambeau"},
		[2] = {contentid = 2271, priority = 1, type = "Hecatoncheir skullcrusher"},
		[3] = {contentid = 2275, priority = 2, type = "Chalcopyrite coblyn"},
		[4] = {contentid = 2288, priority = 1, type = "Kindling Sprite"},
		[5] = {contentid = 2286, priority = 1, type = "Biggy"},
	},
	avoidentity = {
		[1] = {contentid = 1805, radius = 3}, -- WORM BOSS 3 WIP
		[2] = {contentid = 1589, radius = 10}, -- WORM BOSS 3 WIP
		[3] = {contentid = 1848, radius = 15}, -- WORM BOSS 3 WIP
	},
	tankat = {
		[1] = {contentid = 2282, frompercent = 100, topercent = 0, pos = {x = 70.03, y = -12.10, z = -48.12}, desc = "tank the 1st boss here"},
	},
	--[[incombatinteract = {
		[1] = { -- Improved Blasting Device
			interactid = 2002870,
			type = "interact",
			who = "closest",
		},
		[2] = { -- Waymaker Bomb
			interactid = 2002871,
			type = "interact",
			who = "closest",
		},
	},
	useaction = {
		[1] = {
			contentid = 6263,
			actiontree = 1,
			actionid = 7962,
			target = "enemypos",
		},
	},]]
	faceenemyaway = {2285},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Collapsed Rocks destruction", functioncode = [[
				function customfunction()
					if (Player.InCombat == false) then
						if (Player.pos.y >= 22) then
							d("custom nav call")
							if (math.distance3d(Player.pos, {x = -184.12, y = 23.99, z = -206.41}) >= 3) then
								Player:MoveTo(-184.12, 23.99, -206.41)
								d("custom code nav")
							end
						end
						local cmattackel = EntityList("contentid=2293,nearest,alive")
						if (table.valid(cmattackel)) then
							d("custom attack call")
							local cmnel = next(cmattackel)
							local cmtargetpos = cmattackel[cmnel].pos
							if (math.distance3d(Player.pos, cmtargetpos) >= 2) then
								d("custom attack nav")
								Player:MoveTo(cmtargetpos.x, cmtargetpos.y, cmtargetpos.z)
							else
								d("custom attack settarget")
								Player:Stop()
								Player:SetTarget(cmnel)
							end
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "BOSS 2 WIP", functioncode = [[
			-- 1681 Rockslide (Line aoe)
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "BOSS 3 WIP", functioncode = [[
			-- use Crystalline rocks  and drop on sand when worm prepare
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	staybehindentity = {2285,2289},
	puddledata = {
		[1] = {castid = 1683, desc = "second boss puddle", duration = 15, radius = 6},
	},
	pullenemyoutofpuddle = false,
}

return tbl