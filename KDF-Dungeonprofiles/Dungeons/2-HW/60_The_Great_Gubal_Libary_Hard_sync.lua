local tbl = {
	name = "The Great Gubal Libary (Hard)",
	mesh = "[Dungeon] The Great Gubal Library (Hard)",
	dutyid = 578,
	level = 60,
	expansion = 3,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 1.48, y = 0.20, z = 0.26}},
		[2] = {objective = 2, pos = {x = 1.48, y = 0.20, z = 0.26}},
		[3] = {objective = 3, pos = {x = 178.01, y = -7.80, z = 30.78}},
		[4] = {objective = 4, pos = {x = 178.01, y = -7.80, z = 30.78}},
		[5] = {objective = 5, pos = {x = 364.74, y = 0.20, z = -153.83}},
		[6] = {objective = 6, pos = {x = 364.74, y = 0.20, z = -153.83}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 798, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 794, priority = 2, type = "Loot 1"},
		[3] = {contentid = 795, priority = 3, type = "Loot 2"},
		[4] = {contentid = 799, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 796, priority = 5, type = "Loot 3"},
		[6] = {contentid = 797, priority = 6, type = "Loot 4"},
		[7] = {contentid = 800, priority = 7, type = "Boss 3 Loot"}, -- Necrologos: Transcription (Furniture)
	},
	bossids = {
		5216, -- Demon of the Tome
		5218, -- Liquid Flame
		5219, -- Strix
	},
	forcemeleerange = {5219},
	enemytargetdistance = 30,
	prioritytarget = {},
	ignoretarget = {},
	avoidentity = {},
	tankat = {
		[1] = {contentid = 5219, desc = "tank last boss", frompercent = 100, pos = {x = 371.18, y = 0.06, z = -153.8}, topercent = 0},
	},
	incombatinteract = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList("contentid=2569,maxdistance=30,alive,targetable")
					if (not targ and wall) then
						for k, v in pairs(wall) do
							if Player.targetid ~= v.id then
								Player:SetTarget(v.id)
								break
							end
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList("contentid=2571,maxdistance=30,alive,targetable")
					if (not targ and wall) then
						for k, v in pairs(wall) do
							if Player.targetid ~= v.id then
								Player:SetTarget(v.id)
								break
							end
						end
					end
				end
			]]
		},
		[3] = {
			castingid = 6486, -- Quakes -> Air Puddles
			type = "multifixed",
			pos = {
				[1] = {x = 375.21, y = 0.03, z = -142.5},
				[2] = {x = 375.21, y = 0.03, z = -165.2},
				[3] = {x = 352.46, y = 0.03, z = -142.5},
				[4] = {x = 352.46, y = 0.03, z = -165.2},
			},
		},
		[4] = {
			castingid = 6487, -- Tornadoes -> Gravity Puddles
			type = "multifixed",
			pos = {
				[1] = {x = 375.21, y = 0.03, z = -142.5},
				[2] = {x = 375.21, y = 0.03, z = -142.5},
				[3] = {x = 352.46, y = 0.03, z = -142.5},
				[4] = {x = 352.46, y = 0.03, z = -142.5},
			},
		},
	},
	hasbuff = {
		[1] = {
			buffid = 1134,
			type = "move",
			pos = {
				[1] = {x = 375.21, y = 0.03, z = -165.2},
				[2] = {x = 375.21, y = 0.03, z = -165.2},
				[3] = {x = 352.46, y = 0.03, z = -165.2},
				[4] = {x = 352.46, y = 0.03, z = -165.2},
			},
		}
	},
	overheadmarkers = {},
	puddledata = {},
}

return tbl