local tbl = {
	name = "The Temple of the Fist",
	mesh = "[Dungeon] The Temple of the Fist",
	dutyid = 663,
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 423.37619018555, y = 65.146598815918, z = 416.97381591797}},
		[2] = {objective = 2, pos = {x = 423.03820800781, y = 65.146598815918, z = 460.57019042969}},  -- Boss 1
		[3] = {objective = 3, pos = {x = -248.80888366699, y = 296.25238037109, z = -45.999881744385}},
		[4] = {objective = 4, pos = {x = -250.52847290039, y = 296, z = -97.304206848145}}, -- Boss 2
		[5] = {objective = 5, pos = {x = -249.82821655273, y = 292, z = -386.41189575195}},
		[6] = {objective = 6, pos = {x = -250.53942871094, y = 276, z = -462.32260131836}}, -- Boss 3
	},
	interacts = {
		[1] = {contentid = 888, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 884, priority = 2, type = "Loot 1"},
		[3] = {contentid = 885, priority = 3, type = "Loot 2"},
		[4] = {contentid = 889, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 886, priority = 5, type = "Loot 3"},
		[6] = {contentid = 887, priority = 6, type = "Loot 4"},
		[7] = {contentid = 890, priority = 1, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6119, -- Coeurl Sruti
		6118, -- Arbuda
		6117, -- Ivon Coeurlfist
	},
	forcemeleerange= {6119,6118,6117},
	enemytargetdistance = 50,
	prioritytarget = {},
	avoidentity= {
		[1] = {contentid= 6115, radius = 3},
	},
	tankat= {
		[1] = {contentid = 6119, frompercent = 100, topercent = 1, pos = {x = 423.03820800781, y = 65.146598815918, z = 460.57019042969}, desc = "Tank at this pos from 100-1%"},
		[2] = {contentid = 6118, frompercent = 100, topercent = 1, pos = {x = -250.49327087402, y = 296, z = -98.555038452148}, desc = "Tank at this pos from 100-1%"},
		[3] = {contentid = 6117, frompercent = 100, topercent = 1, pos = {x = -250.53942871094, y = 276, z = -462.32260131836}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {
		[1] = {castingid = 8173, type = "singlefixed", pos = {[1] = {x = -230.95341491699, y = 276, z = -442.57461547852}}, desc = "Ralghr's Piece"},
		[2] = {castingid = 8174, type = "singlefixed", pos = {[1] = {x = -250.53942871094, y = 276, z = -462.32260131836}}, desc = "Rose of destruction"},
		[3] = {type = "custom", customdetails = "function", functionname = "Boss 3: Orb Collector", functioncode = [[
				-- Temple of the Fist – Boss 3 (Ivon Coeurlfist) – Spirit Orb collector
				_IVON_ORBS = _IVON_ORBS or {last = 0, curid = nil, lock_until = 0}

				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_IVON_ORBS.last or 0)) or (now - (_IVON_ORBS.last or 0))) < pulse then
					return
				end
				_IVON_ORBS.last = now

				if not Player or not Player.incombat then
					return
				end

				-- only run while we’re actually on Ivon (prevents accidental triggers elsewhere)
				local boss = Player:GetTarget()
				if not (boss and boss.contentid == 6117) then
					return
				end

				local ORB_CID = 6665

				local function d2(ax, az, bx, bz)
					local dx = ax - bx
					local dz = az - bz
					return dx * dx + dz * dz
				end
				local function myPartyIndex()
					local ptab = KitanoiFuncs and KitanoiFuncs.ReturnSortedParty and KitanoiFuncs.ReturnSortedParty() or nil
					if not ptab then
						return 1
					end
					for i = 1, #ptab do
						if ptab[i] == Player.id then
							return i
						end
					end
					return 1
				end

				-- list orbs near us
				local list = MEntityList and MEntityList("contentid=" .. ORB_CID .. ",alive,maxdistance=120") or {}
				local orbs = {}
				for _, e in pairs(list) do
					if e and e.pos then
						table.insert(orbs, e)
					end
				end

				-- if we see orbs, (re)extend a short “collection” lock window
				if #orbs > 0 then
					_IVON_ORBS.lock_until = now + 1500 -- keeps collector alive briefly after last orb vanishes
				end

				-- if lock window expired and no current orb, release control
				if #orbs == 0 and (now >= (_IVON_ORBS.lock_until or 0)) then
					_IVON_ORBS.curid = nil
					return
				end

				-- keep the bot from yanking us back to boss while we’re collecting
				KitanoiSettings.avoidingtime = math.max(KitanoiSettings.avoidingtime or 0, _IVON_ORBS.lock_until or (now + 250))

				-- validate or clear current target if it disappeared / was collected
				if _IVON_ORBS.curid then
					local cur = EntityList and EntityList:Get(_IVON_ORBS.curid) or nil
					if
						(not cur) or (not cur.pos) or
							(Player.pos and d2(Player.pos.x, Player.pos.z, cur.pos.x, cur.pos.z) <= (1.1 * 1.1))
					then
						_IVON_ORBS.curid = nil
					end
				end

				-- pick a new orb if needed
				if (not _IVON_ORBS.curid) and #orbs > 0 then
					-- sort by distance to ME
					table.sort(
						orbs,
						function(a, b)
							local da = d2(Player.pos.x, Player.pos.z, a.pos.x, a.pos.z)
							local db = d2(Player.pos.x, Player.pos.z, b.pos.x, b.pos.z)
							return da < db
						end
					)
					-- spread assignment: take the Nth nearest based on party index
					local idx = myPartyIndex()
					local pick = orbs[math.min(idx, #orbs)]
					_IVON_ORBS.curid = pick and pick.id or nil
				end

				-- move to the chosen orb
				if _IVON_ORBS.curid then
					local dest = EntityList and EntityList:Get(_IVON_ORBS.curid) or nil
					if dest and dest.pos and Player.pos then
						local dx, dz = dest.pos.x - Player.pos.x, dest.pos.z - Player.pos.z
						if (dx * dx + dz * dz) > (1.0 * 1.0) then
							if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
								KitanoiNavigation.NavAPI.MoveTo(dest.pos.x, dest.pos.y, dest.pos.z)
							else
								Player:MoveTo(dest.pos.x, dest.pos.y, dest.pos.z)
							end
							KitanoiSettings.avoidingtime = now + 300 -- keep nudging until we’re on top of it
						else
							-- standing on it: clear so we acquire a new one next tick
							_IVON_ORBS.curid = nil
						end
					else
						_IVON_ORBS.curid = nil
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {8174},
	puddledata= {
		[1] = {castid = 8167, radius= 15, duration = 15, desc = "Spirit Wave"},
	},
}

return tbl