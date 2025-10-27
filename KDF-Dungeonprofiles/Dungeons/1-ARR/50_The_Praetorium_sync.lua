local tbl = {
	name = "The Praetorium",
	mesh = "[Dungeon] The Praetorium v2",
	dutyid = 1044,
	level = 50,
	expansion = 2,
	creator = "Kitanoi\nimprovements to transition: zz",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 190, y = 76, z = 0}},
		[2] = {objective = 2, pos = {x = 190, y = 76, z = 0}},
		[3] = {objective = 3, pos = {x = -165, y = -104, z = 0}},
		[4] = {objective = 4, pos = {x = -165, y = -104, z = 0}},
		[5] = {objective = 5, pos = {x = -238, y = -104, z = -20}},
		[6] = {objective = 6, pos = {x = -238, y = -104, z = -20}},
	},
	interacts = {
		[1] = {contentid = 2012811, priority = 1, type = "Magitek Terminal"},
		[2] = {contentid = 2012813, priority = 2, type = "Magitek Transporter"},
		[3] = {contentid = 2012815, priority = 3, type = "Magitek Terminal 2 - boss 1 lift"},
		[5] = {contentid = 2012817, priority = 4, type = "Magitek Terminal"},
		[4] = {contentid = 2012819, priority = 5, type = "Magitek Mount"},
	},
	bossids = {
		2134, -- Mark II Magitek Colossus
		2135, -- Nero tol Scaeva
		2136, -- Gaius van Baelsar -- Gaius van Baelsar Card
	},
	forcemeleerange = {2135},
	enemytargetdistance = 30,
	prioritytargetdistance = 15,
	prioritytarget = {
		[1] = {contentid = 2121, priority = 1, type = "Magitek Hand"},
	},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (Player.ismounted) then
						local enemies = MEntityList("maxdistance=30,attackable,targetable,alive,nearest")
						local action = ActionList:Get(1, 1128)
						if (enemies) then
							for i, e in pairs(enemies) do
								if (e) then
									if (action and action:IsReady()) then
										action:Cast(e.pos.x, e.pos.y, e.pos.z)
									end
								end
							end
						end
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (HasBuff(Player.id, 3073) and KitanoiFuncs.HowManyAOES() == 0 and not Player:IsMoving()) then
						Player:MoveTo(-165, -104, 0)
						KitanoiSettings.avoidingtime = Now()
					end
				end
			]]
		},
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (KitanoiFuncs.ScanForCaster2(28476)) then
						Player:MoveTo(-164, -104, 0.2)
						KitanoiSettings.avoidingtime = Now()
						if (ActionList:Get(1, 7548):IsReady()) then
							ActionList:Get(1, 7548):Cast(Player.id)
						end
					end
				end
			]]
		},
		[5] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (KitanoiFuncs.ScanForCaster2(28476)) then
						Player:MoveTo(-164, -104, 0.2)
						KitanoiSettings.avoidingtime = Now()
						if (ActionList:Get(1, 7559):IsReady()) then
							ActionList:Get(1, 7559):Cast(Player.id)
						end
					end
				end
			]]
		},
		[6] = {type = "custom", customdetails = "function", functionname = "Wall2Wall", functioncode = [[
				function customfunction()
					--
					--
					--	change the if clause below to: `if 1 == 2 then` if you die to W2W pull
					--
					--
					if KitanoiFuncs.GetFirstNotCompleted() == 1 and Player.incombat then
					--
					--
					--

						local ent = EntityList("ContentId=2012811")
						if next(ent) ~= nil then
							ent = ent[next(ent)]
							--second room, after first checkpoint, pause KDF avoidance & wall to wall pull
							if
								not NavigationManager:IsReachable(ent.Pos) and math.distance3d(Player.Pos, ent.Pos) > 57 and
									math.distance2d(Player.Pos, {x = 145.73, y = 155.12, z = -50}) > 15 and
									KitanoiSettings.StoreVar5.secondRoom ~= true
							then
								-- second room, start multi pulling after first checkpoint
								KitanoiSettings.DisableKDFAvoidance = true
								Player:MoveTo(145.73, 155.12, -50, 10)
								KitanoiSettings.avoidingtime = Now()
							elseif
								not NavigationManager:IsReachable(ent.Pos) and math.distance3d(Player.Pos, ent.Pos) > 57 and
									math.distance2d(Player.Pos, {x = 145.73, y = 155.12, z = -50}) < 15
							then -- resume KDF avoidance
								KitanoiSettings.StoreVar5.secondRoom = true
								KitanoiSettings.DisableKDFAvoidance = false
							else
								KitanoiSettings.DisableKDFAvoidance = false
							end
						end
					--mounted in mounting room, just rush to end, things die as you move
					elseif KitanoiFuncs.GetFirstNotCompleted() == 3 and Player.incombat and Player.ismounted then
						local cid = EntityList("ContentId=1486")
						if next(cid) ~= nil then
							cid = cid[next(cid)]
							if math.distance3d(Player.Pos, cid.Pos) > 65 and math.distance3d(Player.Pos, cid.Pos) < 140 then
								KitanoiSettings.DisableKDFAvoidance = true
								Player:MoveTo(237, 66, 88, 10)
								KitanoiSettings.avoidingtime = Now()
							end
						elseif
							(next(cid) == nil or (next(cid) ~= nil and math.distance3d(Player.Pos, cid[next(cid)].Pos) > 140)) and
								math.distance3d(Player.Pos, {x = -57, y = -103, z = 0}) > 15
						then -- second magitek phase, rush b? rush b.
							KitanoiSettings.DisableKDFAvoidance = true
							Player:MoveTo(-57, -103, 0, 10)
							KitanoiSettings.avoidingtime = Now()
						end
					else
						KitanoiSettings.DisableKDFAvoidance = false
					end

					--idk if necessary, just making sure...
					-- edit: was necessary afterall
					if KitanoiFuncs.GetFirstNotCompleted() > 3 then
						KitanoiSettings.StoreVar5.firstRoom = nil
						KitanoiSettings.StoreVar5.secondRoom = nil
					end
				end
			]]
		},
	},
	overheadmarkers = {
		[1] = {
			contentid = 2136,
			desc = "stacking",
			detectwho = "any",
			id = 62,
			movetoentity = true,
			precise = false,
			timetoreturn = 7,
			type = "move",
		},
		[2] = {
			contentid = 2135,
			desc = "stacking",
			detectwho = "any",
			id = 62,
			movetoentity = true,
			precise = false,
			timetoreturn = 7,
			type = "move",
		},
	},
	excludeavoid = {28493,28477},
	tankbuster = {},
	limitbreak = {},
	staybehindentity = {},
}

return tbl