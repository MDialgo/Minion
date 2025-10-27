local tbl = {
	name = "Akadaemia Anyder",
	mesh = "[Dungeon] Akadaemia Anyder",
	dutyid = 841,
	level = 80,
	expansion = 5,
	creator = "Hikari",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -305.00, y = -30.40, z = 210.00}},
		[2] = {objective = 2, pos = {x = -305.00, y = -30.40, z = 210.00}},
		[3] = {objective = 3, pos = {x = -224.00, y = -27.00, z = -45.00}},
		[4] = {objective = 4, pos = {x = -224.00, y = -27.00, z = -45.00}},
		[5] = {objective = 5, pos = {x = 0.00, y = 301.00, z = -391.00}},
		[6] = {objective = 6, pos = {x = 0.00, y = 301.00, z = -391.00}},
	},
	interacts = {
		[1] = {priority = 1, contentid = 1183, type = "Boss 1 Loot"},
		[2] = {priority = 2, contentid = 1179, type = "Loot 1"},
		[3] = {priority = 3, contentid = 1180, type = "Loot 2"},
		[4] = {priority = 4, contentid = 1184, type = "Boss 2 Loot"},
		[5] = {priority = 5, contentid = 1181, type = "Loot 3"},
		[6] = {priority = 6, contentid = 1182, type = "Loot 4"},
		[7] = {priority = 7, contentid = 1185, type = "Boss 3 Loot"}, -- Clionid Larva & Shadows Withal Orchestrion Roll
	},
	bossids = {
		8235,8236, -- Cladoselache & Doliodus
		8272, -- Marquis Morbol
		8273, -- Quetzalcoatl
	},
	prioritytarget = {},
	avoidentity= {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {castingid = 15903, type = "multifixed",
			pos = {
				[1] = {x= 0.00,y= 301.00,z= -361.00},
				[2] = {x= 0.00,y= 301.00,z= -361.00},
				[3] = {x= 0.00,y= 301.00,z= -361.00},
				[4] = {x= 0.00,y= 301.00,z= -361.00}
			}
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if
						(Player:GetTarget() and Player:GetTarget().contentid == 8272 and Player:GetTarget().action ~= 0 and
							Player:GetTarget().action ~= nil and
							Player:GetTarget().action == 3305 and
							ScanForCaster("8272", "100", "15888", "false") == false)
					then
						KitanoiFuncs.GetClosestCardinalPoint(
							Player:GetTarget().pos.x,
							Player:GetTarget().pos.z,
							math.distance2d(Player.pos, Player:GetTarget().pos),
							Player:GetTarget().pos.h,
							Player:GetTarget().id
						)
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local a = Argus.getCurrentTethers()
					local b = {}
					for c, d in pairs(a) do
						for e, f in pairs(d) do
							local g = EntityList:Get(c)
							local h = EntityList:Get(f.targetid)
							if
								TableSize(g) > 0 and
									(TableSize(b) == 0 or math.distance2d(Player.pos.x, Player.pos.z, g.pos.x, g.pos.z) < b.dist) and
									tonumber(KitanoiFuncs.WhoIsClosest(g.id)) == Player.id
							then
								b = {
									x = g.pos.x,
									y = g.pos.y,
									z = g.pos.z,
									dist = math.distance2d(Player.pos.x, Player.pos.z, g.pos.x, g.pos.z)
								}
							end
						end
					end
					if table.valid(b) and b.x ~= nil then
						Player:MoveTo(b.x, b.y, b.z)
						KitanoiSettings.avoidingtime = Now()
					end
				end
			]]
		},
	},
	overheadmarkers = {},
}

return tbl