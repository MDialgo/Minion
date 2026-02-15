local tbl = {
	name = "Haukke Manor",
	mesh = "[Dungeon] Haukke Manor",
	dutyid = 1040,
	level = 28,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		-- [1] = {"Key Counter"},
		[2] = {objective = 2, pos = {x = 10.50, y = 0.20, z = 0.00}},
		[3] = {objective = 3, pos = {x = -6.95, y = -18.68, z = 48.22}},
		[4] = {objective = 4, pos = {x = 17.23, y = -18.80, z = 4.00}},
		[5] = {objective = 5, pos = {x = -17.00, y = 17.20, z = 0.00}},
	},
	excludeshortcut = {
		[5] = true, --stop using shortcut if step is 5 else we are stuck in a loop
	},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 2000302, req = {objective = 2, complete = false}, priority = 1, type = "Tiny Key"},
		[2] = {contentid = 2000329, req = {objective = 2, complete = false}, priority = 2, type = "Locked Door"},
		[3] = {contentid = 2000303, req = {objective = 2, complete = false}, priority = 3, type = "Tiny Key"},
		[4] = {contentid = 2000331, req = {objective = 2, complete = false}, priority = 4, type = "Locked Door"},
		[5] = {contentid = 66, priority = 5, type = "Loot 1"}, -- Fine Wax
		--[6] = {contentid = 2000304, req = {objective = 2, complete = false}, priority = 6, type = "Tiny Key"},
		--[7] = {contentid = 2000337, req = {objective = 2, complete = false}, priority = 7, type = "Locked Door"},
		--[8] = {contentid = 68, priority = 8, type = "Loot 2"}, -- Too out of the way
		[9] = {contentid = 2000324, req = {objective = 2, complete = false}, priority = 9, type = "Green Key"},
		[10] = {contentid = 73, priority = 10, type = "Boss 1 Loot"},
		[11] = {contentid = 2000355, req = {objective = 2, complete = true}, priority = 11, type = "Ivy Door"},
		[12] = {contentid = 2000305, req = {objective = 2, complete = true}, priority = 12, type = "Tiny Key"},
		[13] = {contentid = 2000339, req = {objective = 2, complete = true}, priority = 13, type = "Locked Door"},
		[14] = {contentid = 70, priority = 14, type = "Loot 3"},
		[15] = {contentid = 2000307, req = {objective = 2, complete = true}, priority = 15, type = "Tiny Key"},
		[16] = {contentid = 2000308, req = {objective = 2, complete = true}, priority = 16, type = "Tiny Key"},
		[17] = {contentid = 2000344, req = {objective = 2, complete = true}, priority = 17, type = "Locked Door"},
		[18] = {contentid = 71, priority = 18, type = "Loot 4"},
		[19] = {contentid = 2000343, req = {objective = 2, complete = true}, priority = 19, type = "Locked Door"},
		[20] = {contentid = 2000325, req = {objective = 2, complete = true}, priority = 20, type = "Yellow Key"},
		--[21] = {contentid = 2000306, req = {objective = 3, complete = true}, priority = 21, type = "Tiny Key"},
		[22] = {contentid = 2000356, req = {objective = 3, complete = true}, priority = 22, type = "Carnation Door"},
		[23] = {contentid = 2001235, req = {objective = 3, complete = true}, priority = 23, type = "Bloody Parchment"},
		[24] = {contentid = 77, priority = 24, type = "Boss 2 Loot"},
		[25] = {contentid = 2012969, req = {objective = 3, complete = true}, priority = 25, type = "Aetherial Flow"},
		[26] = {contentid = 2001233, req = {objective = 3, complete = true}, priority = 26, type = "Sealed Barrier"},
		--[27] = {contentid = 2000345, req = {objective = 3, complete = true}, priority = 27, type = "Locked Door"},
		--[28] = {contentid = 69, priority = 28, type = "Loot 5"}, -- Causes nav problems
		[29] = {contentid = 79, priority = 29, type = "Boss 3 Loot"}, -- The Maiden's Lament Orchestrion Roll
	},
	bossids = {
		423, -- Manor Claviger
		426, -- Manor Jester
		427, -- Manor Steward
		422, -- Lady Amandine -- Succubus Card
	},
	forcemeleerange = {},
	enemytargetdistance = 20,
	prioritytargetdistance = 15,
	prioritytarget = {
		--[1] = {contentid = 633, priority = 1, type = "Manor Maidservant"},
		--[2] = {contentid = 433, priority = 2, type = "Divan Mold"},
		[3] = {contentid = 424, priority = 1, type = "Lady's Handmaiden"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Tiny Key 1 Detector", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList('contentid=2000302,maxdistance=50,targetable')
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
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					KitanoiFuncs.LoadMesh("[Dungeon] Haukke Manor")
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl