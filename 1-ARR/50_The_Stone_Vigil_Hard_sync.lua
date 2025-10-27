local tbl = {
	name = "The Stone Vigil (Hard)",
	mesh = "[Dungeon] The Stone Vigil (Hard)",
	dutyid = 365,
	level = 50,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -61.10, y = -3.86, z = 13.32}},
		[2] = {objective = 2, pos = {x = 0.61, y = 4.00, z = -249.08}},
		[3] = {objective = 3, pos = {x = -132.28, y = -7.80, z = -56.23}},
		[4] = {objective = 4, pos = {x = -132.28, y = -7.80, z = -56.23}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 295, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 291, priority = 2, type = "Loot 1"}, -- Stone Vigil Lumber
		[3] = {contentid = 292, priority = 3, type = "Loot 2"},
		[4] = {contentid = 296, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 293, priority = 5, type = "Loot 3"},
		[6] = {contentid = 294, priority = 6, type = "Loot 4"},
		[7] = {contentid = 2003546, priority = 7, type = "Main Storage Vault Key"},
		[8] = {contentid = 2003547, priority = 8, type = "Main Storage Vault Gate"},
		[9] = {contentid = 298, priority = 9, type = "Boss 3 Loot"},
	},
	bossids = {
		2778, -- Gorynich
		2775, -- Cuca Fera
		2774, -- Giruveganaus -- Blue Dragon Card
	},
	forcemeleerange = {},
	enemytargetdistance = 25,
	prioritytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 2785, priority = 1, type = "Harranguing Harrier"},
	},
	dontclearfriendlytargets = {2168},
	avoidentity = {},
	incombatinteract = {
		[1] = { -- Bertha
			interactid = 2168,
			type = "interact",
			who = "closest",
		},
	},
	useaction = {
		[1] = {
			actiontree = 1,
			actionid = 2238,
			target = "enemypos",
			mindist = 16,
			contentid = "2776;2775;2777",
		},
		[2] = {
			actiontree = 1,
			actionid = 2237,
			mindist = 16,
			target = "enemypos",
			contentid = "2776;2775;2777",
		},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Gowrow Bertha Shots", functioncode = [[
				function customfunction()
					local el = MEntityList("targetable,maxdistance=60,contentid=2003540;2003541;2003542")
					if not dragonindex then
						dragonindex = 1
						dragonmovetick = 0
					end
					if dragonindex > 3 then
						dragonindex = 1
					end
					if el then
						local tbl = {
							{id = 2003540, pos = {x = 31.94, y = 0.20, z = -151.62}},
							{id = 2003541, pos = {x = 34.26, y = 0.19, z = -143.89}},
							{id = 2003542, pos = {x = 31.74, y = 0.20, z = -136.27}}
						}
						if not MIsCasting() and TimeSince(dragonmovetick) > 2000 then
							if math.distance3d(Player.pos, tbl[dragonindex].pos) > 2 then
								Player:SetSpeed(1, 6, 6, 6)
								Player:MoveTo(tbl[dragonindex].pos.x, tbl[dragonindex].pos.y, tbl[dragonindex].pos.z)
							else
								for k, v in pairs(el) do
									if v.contentid == tbl[dragonindex].id then
										Player:Interact(v.id)
										dragonindex = dragonindex + 1
										dragonmovetick = Now()
										Player:SetSpeed(1, 0, 0, 0)
										return true
									end
								end
							end
						end
					else
						Player:SetSpeed(1, 6, 6, 6)
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "Gowrow Adds", functioncode = [[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList("contentid=2787;2781,maxdistance=30,los,alive,targetable,nearest")
					if (not targ and wall) then
						local i, e = next(wall)
						if (i and e) then
							Player:SetTarget(i)
						end
					end
					if (wall and not targ.incombat and targ and targ.contentid == 2293) then
						ActionList:Get(5, 1):Cast(targ.id)
						if (math.distance2d(Player.pos, Player:GetTarget().pos) > (targ.hitradius + 3)) then
							Player:MoveTo(targ.pos.x, targ.pos.y, targ.pos.z)
							KitanoiSettings.avoidingtime = Now()
						end
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "Boss 2: Adds", functioncode =
			[[
				function customfunction()
					local targ = Player:GetTarget()
					local wall = MEntityList("contentid=2776;2777,maxdistance=60,los,alive,targetable,nearest")
					if (wall) then
						local i, e = next(wall)
						if (i and e) then
							Player:SetTarget(i)
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