local tbl = {
	name = "Dzemael Darkhold",
	mesh = "[Dungeon] Dzemael Darkhold",
	dutyid = 171,
	level = 44,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 124.04065704346, y = -13.798027992249, z = 123.3109664917}},
		[2] = {objective = 2, pos = {x = -9.6011629104614, y = -22.082632064819, z = -161.71424865723}},
		[3] = {objective = 3, pos = {x = -9.6011629104614, y = -22.082632064819, z = -161.71424865723}},
		[4] = {objective = 4, pos = {x = 86.628219604492, y = -39.040264129639, z = -176.6927947998}},
	},
	interactdistance = 50,
	interacts = {
		--[1] = {contentid = 170, priority = 1, type = "Loot 1"}, -- Too out of the way
		[2] = {contentid = 174, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 2000458, priority = 3, type = "Magitek Transporter"},
		--[4] = {contentid = 172, priority = 4, type = "Loot 2"}, -- Causes Nav problems
		[5] = {contentid = 173, priority = 5, type = "Loot 3"},
		[6] = {contentid = 175, priority = 6, type = "Boss 2 Loot 1"},
		[7] = {contentid = 176, priority = 7, type = "Boss 2 Loot 2"},
		[8] = {contentid = 2000474, priority = 8, type = "Magitek Transporter"},
		[9] = {contentid = 177, priority = 9, type = "Boss 3 Loot"}, -- The Darkhold Orchestrion Roll
	},
	bossids = {
		1397, -- All-seeing Eye
		1415, -- Taulurd
		1396, -- Batraal -- Ahriman Card
	},
	forcemeleerange = {},
	enemytargetdistance = 40,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 2154, priority = 1, type = "Corrupted Crystal"},
		[2] = {contentid = 1396, priority = 2, type = "Batraal"},
	},
	ignoretarget = {1397},
	tankat = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Magitek Terminals", functioncode = [[
				_TERM = _TERM or {last = 0, lock_id = nil, lock_until = 0}
				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if (now - (_TERM.last or 0)) < pulse then
					return
				end
				_TERM.last = now

				-- only when NOT fighting
				if not Player or not Player.pos or Player.incombat then
					return
				end
				-- add 2000476 to the list if you want to access Loot 1
				local ACTIVE = 0 -- set to 7 if your terminals use 7 as "on"
				local QUERY = "contentid=2000478;2000479;2000483;2000484,maxdistance=40"
				local list =
					(KitanoiFuncs and KitanoiFuncs.MEntityList and KitanoiFuncs.MEntityList(QUERY)) or
					(MEntityList and MEntityList(QUERY)) or
					nil
				if not list then
					return
				end

				local function dist(a, b)
					local dx = a.x - b.x
					local dy = a.y - b.y
					local dz = a.z - b.z
					return math.sqrt(dx * dx + dy * dy + dz * dz)
				end
				local move =
					(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo) or (Player and Player.MoveTo)
				local ARRIVE, JIT = 0.35, 0.25

				-- If we're already camping one, keep at it until it flips or timeout
				if _TERM.lock_id then
					local byId = MEntityList and MEntityList("id=" .. tostring(_TERM.lock_id) .. ",maxdistance=80") or nil
					local _, e = byId and next(byId) or nil
					if e and e.eventid == ACTIVE and now < (_TERM.lock_until or 0) then
						local p = e.pos
						if dist(Player.pos, p) > ARRIVE then
							local x, y, z = p.x, p.y, p.z
							if KitanoiFuncs and KitanoiFuncs.randompointInCircle then
								local n = KitanoiFuncs.randompointInCircle(p.x, p.z, JIT)
								if n then
									x, z = n.x, n.z
								end
							end
							if move then
								move(x, y, z)
							end
							KitanoiSettings.avoidingtime = now + 400
						end
						return
					end
					_TERM.lock_id, _TERM.lock_until = nil, 0
				end

				-- Pick nearest ACTIVE terminal
				local best, bestd
				for _, e in pairs(list) do
					if e and e.pos and e.eventid == ACTIVE then
						local d = dist(Player.pos, e.pos)
						if not best or d < bestd then
							best, bestd = e, d
						end
					end
				end
				if not best then
					return
				end

				-- Move onto it (tiny jitter so we stand ON the disc)
				local p = best.pos
				local x, y, z = p.x, p.y, p.z
				if KitanoiFuncs and KitanoiFuncs.randompointInCircle then
					local n = KitanoiFuncs.randompointInCircle(p.x, p.z, JIT)
					if n then
						x, z = n.x, n.z
					end
				end
				if move then
					move(x, y, z)
				end
				KitanoiSettings.avoidingtime = now + 600

				-- Lock this terminal for a bit; we'll release when it flips
				_TERM.lock_id = best.id
				_TERM.lock_until = now + 12000
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "Eye Debuff Helper", functioncode = [[
				function customfunction()
					-- throttle
					_DZ_CRYSTAL = _DZ_CRYSTAL or {last = 0, lastMove = 0}
					local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
					local pulse = gPulseTime or 150
					if (now - (_DZ_CRYSTAL.last or 0)) < pulse then
						return
					end
					_DZ_CRYSTAL.last = now
					if not Player or not Player.pos then
						return
					end

					-- gate: only after objective 1 complete (so we don't target the boss earlier in the duty)
					local objectives = Duty and Duty.GetActiveDutyObjectives and Duty:GetActiveDutyObjectives() or nil
					if not (objectives and objectives[1] and objectives[1].completed) then
						return
					end

					-- boss
					local bl = MEntityList and MEntityList("contentid=1397,alive,maxdistance=30,targetable") or {}
					local _, boss = next(bl)
					if not boss then
						return
					end

					-- helper: has buff?
					local function hasBuff(ent, id)
						local buffs = ent and (ent.buffs or (ent.GetBuffs and ent:GetBuffs())) or {}
						for _, b in pairs(buffs) do
							local bid = b and (b.id or b.buffid or b.statusid)
							if bid == id then
								return true
							end
						end
						return false
					end

					-- if boss is vulnerable: let normal combat take over
					if not hasBuff(boss, 325) then
						if Player.SetTarget and Player.targetid ~= boss.id then
							Player:SetTarget(boss.id)
						end
						return
					end

					-- boss is invulnerable: move to the nearest ACTIVE crystal pair's midpoint
					local q = "contentid=2000276;2000279,maxdistance=80"
					local list =
						(KitanoiFuncs and KitanoiFuncs.MEntityList and KitanoiFuncs.MEntityList(q)) or (MEntityList and MEntityList(q)) or
						{}
					if not list or not next(list) then
						return
					end

					-- split by cid and keep only active (eventid==0)
					local act276, act279 = {}, {}
					for _, e in pairs(list) do
						if e and e.pos and e.eventid == 0 then
							if e.contentid == 2000276 then
								act276[#act276 + 1] = e
							elseif e.contentid == 2000279 then
								act279[#act279 + 1] = e
							end
						end
					end
					if (#act276 == 0 and #act279 == 0) then
						return
					end

					-- pair them by proximity and choose the midpoint closest to us
					local me = Player.pos
					local bestMid, bestD2
					local function tryPairs(A, B)
						for _, a in ipairs(A) do
							local nearestB, nd2
							for _, b in ipairs(B) do
								local dx, dy, dz = a.pos.x - b.pos.x, a.pos.y - b.pos.y, a.pos.z - b.pos.z
								local d2 = dx * dx + dy * dy + dz * dz
								if (not nd2 or d2 < nd2) then
									nearestB, nd2 = b, d2
								end
							end
							if nearestB then
								local mid = {
									x = (a.pos.x + nearestB.pos.x) * 0.5,
									y = (a.pos.y + nearestB.pos.y) * 0.5,
									z = (a.pos.z + nearestB.pos.z) * 0.5
								}
								local mx, my, mz = mid.x, mid.y, mid.z
								local dx, dy, dz = mx - me.x, my - me.y, mz - me.z
								local d2 = dx * dx + dy * dy + dz * dz
								if (not bestD2 or d2 < bestD2) then
									bestMid, bestD2 = mid, d2
								end
							end
						end
					end
					tryPairs(act276, act279)
					tryPairs(act279, act276)
					if not bestMid then
						return
					end

					-- nudge slightly so we're “on” the spot; 1.0y is enough to trigger the reveal
					local px, py, pz = bestMid.x, bestMid.y, bestMid.z
					if not Player:IsMoving() and KitanoiFuncs and KitanoiFuncs.randompointInCircle then
						local n = KitanoiFuncs.randompointInCircle(px, pz, 0.8)
						if n then
							px, pz = n.x, n.z
						end
					end

					-- move (gently throttled)
					if (now - (_DZ_CRYSTAL.lastMove or 0)) >= 120 then
						(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo or Player.MoveTo)(
							px,
							py,
							pz
						)
						KitanoiSettings.avoidingtime = now + 600
						_DZ_CRYSTAL.lastMove = now
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "Clear Boss pre-obj1", functioncode = [[
				_DZ_CLR = _DZ_CLR or {last = 0}
				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if (now - (_DZ_CLR.last or 0)) < pulse then
					return
				end
				_DZ_CLR.last = now

				local obj = Duty and Duty.GetActiveDutyObjectives and Duty:GetActiveDutyObjectives() or nil
				if not obj or not obj[1] or obj[1].completed then
					return
				end -- stop once obj1 is done

				local t = Player and Player.GetTarget and Player:GetTarget() or nil
				if t and t.contentid == 1397 and Player.ClearTarget then
					Player:ClearTarget()
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	dontexcludeaoe = {1167},
	staybehindentity = {1396},
	puddledata = {},
	pullenemyoutofpuddle = false,
}

return tbl