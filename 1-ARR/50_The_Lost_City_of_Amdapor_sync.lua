local tbl = {
	name = "The Lost City of Amdapor",
	mesh = "[Dungeon] The Lost City of Amdapor",
	dutyid = 363,
	level = 50,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 98.02, y = 42.21, z = -39.39}},
		[2] = {objective = 2, pos = {x = -24.19, y = 12.20, z = 68.96}},
		[3] = {objective = 3, pos = {x = -3.74, y = -279.80, z = -9.00}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 300, priority = 1, type = "Loot 1"},
		[3] = {contentid = 301, priority = 3, type = "Loot 2"},
		[2] = {contentid = 304, priority = 2, type = "Boss 1 Loot"},
		[4] = {contentid = 302, priority = 4, type = "Loot 3"},
		[5] = {contentid = 306, priority = 6, type = "Boss 2 Loot"},
		[6] = {contentid = 303, priority = 5, type = "Loot 4"},
		[7] = {contentid = 307, priority = 6, type = "Boss 3 Loot"}, -- Faded Copy of The Scars of Battle
	},
	bossids = {
		2556, -- Decaying Gourmand
		2560, -- Arioch
		2564, -- Diabolos
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 2557, priority = 1, type = "Voracious Maw"},
		[2] = {contentid = 2560, priority = 1, type = "Arioch"}
	},
	ignoretarget = {2561},
	avoidentity = {
		[1] = {contentid = 2567, radius = 6}, -- Gravity Orb
	},
	tankat = {},
	incombatinteract = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Mold Colonies Focus", functioncode = [[
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
		[2] = {type = "custom", customdetails = "function", functionname = "Magestones Focus", functioncode = [[
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
		[3] = {type = "custom", customdetails = "function", functionname = "Boss 2: Arioch", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					-- Find Ranch Wamoura (contentid=2561) within 40 yalms
					local wall = MEntityList('contentid=2561,maxdistance=40,nearest,alive,targetable')

					if wall then
						-- Get nearest Ranch Wamoura
						local nearest = nil
						local shortestDist = 99999
						for k, v in pairs(wall) do
							local dist = math.distance2d(Player.pos, v.pos)
							if dist < shortestDist then
								shortestDist = dist
								nearest = v
							end
						end

						-- If we found one, move into melee range and then attack it
						if nearest then
							local dist3d = math.distance3d(Player.pos, nearest.pos)
							if dist3d > 5 then
								-- Move into melee range
								Player:MoveTo(nearest.pos.x, nearest.pos.y, nearest.pos.z)
							else
								-- Within range, start attacking it
								Player:SetTarget(nearest.id)
							end
						end
					end
				end
			]]
		},
	},
	hasbuff = {}, -- Pollen id 19
	overheadmarkers = {},
	puddledata = {
		[1] = {castid = 941, desc = "Moldy Phlegm", duration = 60, radius = 5},
	},
	staybehindentity = {2560},
}

return tbl