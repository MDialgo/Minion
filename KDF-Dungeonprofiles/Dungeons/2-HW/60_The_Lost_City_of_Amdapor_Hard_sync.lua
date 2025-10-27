local tbl = {
	name = "The Lost City of Amdapor (Hard)",
	mesh = "[Dungeon] The Lost City of Amdapor (Hard)",
	dutyid = 519,
	level = 60,
	expansion = 3,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -234.03,y = 12.00,z = -280.20 }},
		[2] = {objective = 2, pos = {x = -234.03,y = 12.00,z = -280.20 }},
		[3] = {objective = 3, pos = {x = -272.70,y = -278.50,z = -223.02 }},
		[4] = {objective = 4, pos = {x = -272.70,y = -278.50,z = -223.02 }},
		[5] = {objective = 5, pos = {x = 231.11,y = -854.40,z = 414.09 }},
		[6] = {objective = 6, pos = {x = 231.11,y = -854.40,z = 414.09 }},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 699, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 695, priority = 2, type = "Loot 1"},
		[3] = {contentid = 696, priority = 3, type = "Loot 2"},
		[4] = {contentid = 700, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 697, priority = 5, type = "Loot 3"},
		[6] = {contentid = 698, priority = 6, type = "Loot 4"},
		[7] = {contentid = 701, priority = 7, type = "Boss 3 Loot"}, -- Minion
	},
	bossids = {
		4744, -- Achamoth
		4745, -- Winged Lion
		4747, -- Kuribu
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 4748, priority = 1, type = "3rd Boss Add"},
	},
	ignoretarget = {},
	avoidentity = {},
	tankat = {},
	incombatinteract = {},
	advancedavoid = {
		[1] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				local wall = MEntityList('contentid=4791,maxdistance=20,nearest,alive,targetable')
				if wall then
					-- find nearest target manually (replacement for ExmachinasFunc.GetNearestTarget)
					local nearest, best = nil, 1e9
					for _, v in pairs(wall) do
						local dist = math.distance2d(Player.pos, v.pos)
						if dist < best then
							best = dist
							nearest = v
						end
					end

					if nearest then
						-- attack range is effectively 3y unless overridden
						local range = 3
						local d3 = math.distance3d(Player.pos, nearest.pos)
						if d3 > range then
							Player:MoveTo(nearest.pos.x, nearest.pos.y, nearest.pos.z)
							KitanoiSettings.avoidingtime = Now()
						else
							Player:SetTarget(nearest.id)
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	puddledata = {},
}

return tbl