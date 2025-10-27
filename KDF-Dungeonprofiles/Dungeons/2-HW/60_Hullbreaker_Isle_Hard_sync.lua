local tbl = {
	name = "Hullbreaker Isle (Hard)",
	mesh = "[Dungeon] Hullbreaker (Hard)",
	dutyid = 557,
	level = 60,
	expansion = 3,
	creator = "Rinn",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 220.70, y = 64.69, z = -13.18}},
		[2] = {objective = 2, pos = {x = 220.70, y = 64.69, z = -13.18}},
		[3] = {objective = 3, pos = {x = -80.52, y = 44.10, z = -123.59}},
		[4] = {objective = 4, pos = {x = -80.52, y = 44.10, z = -123.59}},
		[5] = {objective = 5, pos = {x = -353.41, y = 7.94, z = 56.04}},
		[6] = {objective = 6, pos = {x = -353.41, y = 7.94, z = 56.04}},
	},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 770, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 766, priority = 1, type = "Loot 1"},
		[3] = {contentid = 767, priority = 1, type = "Loot 2"},
		[4] = {contentid = 771, priority = 1, type = "Boss 2 Loot"},
		[5] = {contentid = 768, priority = 1, type = "Loot 3"}, -- Slightly out of mesh
		[6] = {contentid = 769, priority = 1, type = "Loot 4"},
		[7] = {contentid = 772, priority = 1, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		4910, -- Sanguine Sirens Challenge
		4911, -- Ymir
		4914, -- Mistbeard
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {},
	ignoretarget = {},
	avoidentity = {},
	tankat = {},
	advancedavoid = {
		[1] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				-- Hullbreaker (Hard) – Mitigate 6118 near contentid 2007255
				_HBH_6118 = _HBH_6118 or {last = 0, hold_until = 0, target = nil}
				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_HBH_6118.last or 0)) or (now - (_HBH_6118.last or 0))) < pulse then
					return
				end
				_HBH_6118.last = now

				if not Player or not Player.incombat or not Player.pos then
					return
				end

				-- detect 6118 cast on boss (no filter = any caster)
				local isCast = (TensorCore and TensorCore.isAnyEntityCasting and TensorCore.isAnyEntityCasting(6118))
				if isCast then
					_HBH_6118.hold_until = now + 1800
				end -- refresh short window while active

				-- find nearest mitigator
				local best, bestd2 = nil, 1e12
				local list = MEntityList and MEntityList("contentid=2007255,alive,maxdistance=100") or {}
				for _, e in pairs(list) do
					if e and e.pos then
						local dx, dz = e.pos.x - Player.pos.x, e.pos.z - Player.pos.z
						local d2 = dx * dx + dz * dz
						if d2 < bestd2 then
							best, bestd2 = e, d2
						end
					end
				end

				-- move while the cast is up or our short hold is active
				if (isCast or now < (_HBH_6118.hold_until or 0)) and best and best.pos then
					if bestd2 > (1.2 * 1.2) then
						if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
							KitanoiNavigation.NavAPI.MoveTo(best.pos.x, best.pos.y, best.pos.z)
						else
							Player:MoveTo(best.pos.x, best.pos.y, best.pos.z)
						end
					end
					KitanoiSettings.avoidingtime = math.max(KitanoiSettings.avoidingtime or 0, now + 1200)
					return
				end
			]]
		},
		[2] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				-- Hullbreaker (Hard) – after icicles (cid 4912) spawn near stack, run to escape
				_HBH_ICE_ESCAPE = _HBH_ICE_ESCAPE or {last = 0, hold_until = 0}
				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_HBH_ICE_ESCAPE.last or 0)) or (now - (_HBH_ICE_ESCAPE.last or 0))) < pulse then
					return
				end
				_HBH_ICE_ESCAPE.last = now

				if not Player or not Player.incombat or not Player.pos then
					return
				end

				local STACK = {x = -80.16, y = 44.10, z = -137.80}
				local ESCAPE = {x = -83.78, y = 44.30, z = -107.50}
				local R2 = 30 * 30 -- 30y radius around the stack spot

				-- detect any icicle (cid 4912) within 30y of the STACK point
				local spawned = false
				local list = MEntityList and MEntityList("contentid=4912,alive") or {}
				for _, e in pairs(list) do
					if e and e.pos then
						local dx, dz = e.pos.x - STACK.x, e.pos.z - STACK.z
						if (dx * dx + dz * dz) <= R2 then
							spawned = true
							break
						end
					end
				end

				if spawned then
					-- arm/refresh our escape window (tweak 6500 if you need longer)
					_HBH_ICE_ESCAPE.hold_until = now + 6500
				end

				-- while armed: run to ESCAPE and pin control so nothing yanks us back
				if (_HBH_ICE_ESCAPE.hold_until or 0) > now then
					local dx, dz = ESCAPE.x - Player.pos.x, ESCAPE.z - Player.pos.z
					if (dx * dx + dz * dz) > (1.0 * 1.0) then
						if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
							KitanoiNavigation.NavAPI.MoveTo(ESCAPE.x, ESCAPE.y, ESCAPE.z)
						else
							Player:MoveTo(ESCAPE.x, ESCAPE.y, ESCAPE.z)
						end
					end
					KitanoiSettings.avoidingtime = _HBH_ICE_ESCAPE.hold_until
					return
				end
			]]
		}
	},
	hasbuff = {
		[1] = {
			buffid = 1077,
			type = "move",
			pos = {
				[1] = {x = -80.16, y = 44.10, z = -137.8},
				[2] = {x = -83.78, y = 44.30, z = -107.5},
				[3] = {x = -80.16, y = 44.10, z = -137.8},
				[4] = {x = -83.78, y = 44.30, z = -107.5},
			},
		}
	},
	overheadmarkers = {
		[1] = {
			id = 67, -- Ice Blocks
			contentid = "4911",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = -80.16, y = 44.10, z = -137.80},
				[2] = {x = -80.16, y = 44.10, z = -137.80},
				[3] = {x = -80.16, y = 44.10, z = -137.80},
				[4] = {x = -80.16, y = 44.10, z = -137.80}
			},
			--timetoreturn = 5
		},
	},
	tethers = {
--		[1] = {
--			id = 50,
--			type = "move",
--			priority = 1,
--			pos = {
--				[1] = {x = -80.16, y = 44.10, z = -137.8},
--				[2] = {x = -83.78, y = 44.30, z = -107.5},
--				[3] = {x = -80.16, y = 44.10, z = -137.8},
--				[4] = {x = -83.78, y = 44.30, z = -107.5},
--			},
--			desc = "Second Boss tether"},
	},
	excludeavoid = {},
	limitbreak = {},
	puddledata = {},
	enemylos = true,
}

return tbl