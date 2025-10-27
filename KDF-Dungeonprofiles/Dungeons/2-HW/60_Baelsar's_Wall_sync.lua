local tbl = {
	name = "Baelsar's Wall",
	mesh = "[Dungeon] Baelsar's Wall v2",
	dutyid = 1114,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[2] = {objective = 2, pos = {x = -174, y = 2.92, z = 81}},
		[3] = {objective = 3, pos = {x = -174, y = 2.92, z = 81}},
		[4] = {objective = 4, pos = {x = 117, y = -300, z = 0}},
		[5] = {objective = 5, pos = {x = 117, y = -300, z = 0}},
		[6] = {objective = 6, pos = {x = 345, y = 212, z = 392}},
		[7] = {objective = 7, pos = {x = 345, y = 212, z = 392}},
	},
	interactdistance = 25,
	interacts = {
		[1] = {contentid = 2007567, priority = 1, type = "Imperial Identification Key 1"},
		[2] = {contentid = 2007571, priority = 2, type = "Security Terminal 1"},
		[3] = {contentid = 2007568, priority = 3, type = "Imperial Identification Key 2"},
		[4] = {contentid = 2007572, priority = 4, type = "Security Terminal 2"},
		[5] = {contentid = 848, priority = 5, type = "Boss 1 Loot"},
		[6] = {contentid = 2007580, priority = 6, type = "Control Panel"},
		[7] = {contentid = 844, priority = 7, type = "loot"},
		[8] = {contentid = 849, priority = 8, type = "Boss 2 Loot"},
		[9] = {contentid = 845, priority = 9, type = "Loot"},
		[10] = {contentid = 2007569, priority = 10, type = "Imperial Identification Key 3"},
		[11] = {contentid = 2007573, priority = 11, type = "Security Terminal 3"},
		[12] = {contentid = 846, priority = 12, type = "Loot"},
		[13] = {contentid = 847, priority = 13, type = "Loot"},
		[14] = {contentid = 850, priority = 14, type = "Boss 3 Loot"}, -- Minion
	},
	bossids = {
		5560, -- Magitek Predator
		5562, -- Armored Weapon
		5564, -- The Griffin
	},
	forcemeleerange = {5566,5564},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 5553, priority = 1, desc = "sky armor",},
		[2] = {contentid = 5561, priority = 2, desc = "boss 1 adds with tethers",},
		[3] = {contentid = 5554, priority = 3, desc = "boss 2 adds",},
		[4] = {contentid = 5565, priority = 4, desc = "boss 3 collar",},
	},
	ignoretarget = {5566},
	tankat = {
		[1] = {contentid = 5562, frompercent = 100, topercent = 0, pos = {x = 120, y = -300, z = 0}, desc = "tank second boss"},
		[2] = {contentid = 5564, frompercent = 100, topercent = 0, pos = {x = 352, y = 212, z = 391}, desc = "tank last boss at center"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					if (KitanoiFuncs.IsMarkerUp(30)) then
						local trusts = MEntityList("chartype=9,maxdistance=50")
						if (trusts ~= nil) then
							for rr, tt in pairs(trusts) do
								if (tt) then
									KitanoiFuncs.CurrentAOEs[tt.id .. rr] = {
										type = "circle",
										entity = tt.id,
										target = IsNull(targetAttach, 0),
										aoeID = tt.id,
										name = "noname",
										poly = {},
										radius = 10,
										length = 6,
										width = 6,
										pos = tt.pos,
										heading = 0,
										casttime = 5,
										channelingtime = 0,
										deletetime = Now() + 1000
									}
								end
							end
						end
					end
					if (HasBuff(Player.id, 1132) and targ) then
						local posto = KitanoiFuncs.get_point_between_points(Player.pos, targ.pos, -10)
						local newx, newz = KitanoiFuncs.MakeRectangle()
						if (newx and newz) then
							KitanoiNavigation.NavAPI.MoveTo(newx, Player.pos.y, newz)
							KitanoiSettings.avoidingtime = Now()
						end
						if (posto and not Player:IsMoving()) then
							Player:SetFacing(posto.x, posto.y, posto.z)
						end
					end
					local blades = MEntityList("contentid=5566,targetable,alive")
					if (blades) then
						for i, e in pairs(blades) do
							if (i and e) then
								if (math.distance2d(e.pos, {x = 351.95, y = 212, z = 392}) < 2) then
									Player:SetTarget(i)
									break
								end
							end
						end
					end
				end
			]]
		},
		--[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
		--		function customfunction()
		--			KitanoiFuncs.LoadMesh("[Dungeon] Baelsar's Wall v2")
		--		end
		--	]]
		--},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 30,
			contentid = 5560,
			desc= "",
			type = "justrecord",
			detectwho = "any",
			timetoreturn = 8,
		},
	},
	excludeavoid = {7372},
	puddledata = {},
	pausemovement = {
		[[
			return math.distance3d(Player.pos, {x = -0, y = -300, z = 0}) <= 20 and
				KitanoiFuncs.CheckRayCast({x = 12.72, y = -299, z = 0}, {x = 17, y = -299, z = 0})
		]],
	},
}

return tbl