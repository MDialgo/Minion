local tbl = 	{
	name = "Snowcloak",
	mesh = "[Dungeon] Snowcloak v2",
	dutyid = 1062,
	level = 50,
	expansion = 2,
	creator = "Rinn#4747",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 59.7, y = 4.7, z = -44.92}},
		[2] = {objective = 2, pos = {x = 59.66, y = -2.5, z = -92.67}},
		[3] = {objective = 3, pos = {x = -105.71, y = 10.5, z = -119.62}},
		[4] = {objective = 4, pos = {x = -57, y = 41.02, z = 64.72}},
		[5] = {objective = 5, pos = {x = 18.34, y = 40.07, z = 67.32}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 2004225, priority = 1, type = "Tiny Key"},
		[2] = {contentid = 2004203, priority = 2, req = {complete = true, objective = 1}, type = "Door to Silence"},
		[3] = {contentid = 392, priority = 3, type = "Boss 1 Loot"},
		[4] = {contentid = 393, priority = 4, type = "Boss 2 Loot 1"},
		[5] = {contentid = 394, priority = 4, type = "Boss 2 Loot 2"},
		[6] = {contentid = 2004226, priority = 5, type = "Finger of the Apostate"},
		[7] = {contentid = 2004224, priority = 6, req = {complete = true, objective = 4}, type = "Door to Oblivion"},
		[8] = {contentid = 395, priority = 7, type = "Boss 3 Loot"}, -- N/A
	},
	bossids = {
		3038, -- Wandil
		3040, -- Yeti
		3044, -- Fenrir -- Fenrir Card & The Warrens Orchestrion Roll
	},
	forcemeleerange = {3038,3040,3044},
	enemytargetdistance = 50,
	prioritytargetdistance = 10,
	prioritytarget = {},
	avoidentity = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Wandil Snow Drift", functioncode = [[
				-- Anti-freeze micro-movement: wiggle for ~1.5s after a specific cast ends
				function customfunction()
					_SNOW_JITTER = _SNOW_JITTER or {last = 0, ["until"] = 0, wasCasting = false, side = false, lastStep = 0}

					local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
					local pulse = gPulseTime or 150
					if (now - (_SNOW_JITTER.last or 0)) < pulse then
						return
					end
					_SNOW_JITTER.last = now

					if not Player or not Player.pos or not Player.incombat then
						return
					end

					-- configure
					local BOSS_Q = "contentid=3038,alive,targetable,maxdistance=80,nearest"
					local CAST_ID = 3080
					local WIGGLE_MS = 2100
					local STEP_MS = 220
					local OFFSET = 0.60

					-- boss & cast check
					local bl = MEntityList and MEntityList(BOSS_Q) or {}
					local _, boss = next(bl)
					if not boss then
						return
					end
					local castid = (boss.castinginfo and (boss.castinginfo.channelingid or boss.castinginfo.castid)) or boss.action
					local casting = (castid == CAST_ID)

					if casting then
						_SNOW_JITTER.wasCasting = true
						return
					end

					if _SNOW_JITTER.wasCasting and not casting then
						_SNOW_JITTER.wasCasting = false
						_SNOW_JITTER["until"] = now + WIGGLE_MS
					end

					if now < (_SNOW_JITTER["until"] or 0) then
						if (now - (_SNOW_JITTER.lastStep or 0)) >= STEP_MS then
							_SNOW_JITTER.side = not _SNOW_JITTER.side
							_SNOW_JITTER.lastStep = now
						end

						-- small strafe perpendicular to facing
						local p = Player.pos
						local h = p.h or 0
						local sideAngle = h + (_SNOW_JITTER.side and math.pi / 2 or -math.pi / 2)
						local dx = math.cos(sideAngle) * OFFSET
						local dz = math.sin(sideAngle) * OFFSET
						local tx, ty, tz = p.x + dx, p.y, p.z + dz

						local move =
							(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo) or
							(Player and Player.MoveTo)
						if move then
							move(tx, ty, tz)
						end
						KitanoiSettings.avoidingtime = now + STEP_MS
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "Fenrir Lunar Cry", functioncode = [[
				-- Snowcloak: Fenrir (3044) Lunar Cry (29599) → hide behind the one pillar not casting Pillar Shatter (29648)
				_SNOW_FENRIR = _SNOW_FENRIR or {last = 0, lastMove = 0}
				function customfunction()
					local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
					local pulse = gPulseTime or 150
					if (now - (_SNOW_FENRIR.last or 0)) < pulse then
						return
					end
					_SNOW_FENRIR.last = now
					if not Player or not Player.pos then
						return
					end

					-- Find Fenrir and confirm he's channeling Lunar Cry
					local bl = MEntityList and MEntityList("contentid=3044,targetable,alive,maxdistance=80,nearest") or {}
					local _, boss = next(bl)
					if not boss then
						return
					end
					local bcast = (boss.castinginfo and (boss.castinginfo.channelingid or boss.castinginfo.castid)) or boss.action
					if bcast ~= 29599 then
						return
					end

					-- Get pillars (be permissive with targetable flag)
					local plist = MEntityList("contentid=3045,alive,maxdistance=80") or {}
					if not table.valid(plist) then
						return
					end

					-- Choose the nearest pillar that is NOT casting Pillar Shatter (29648)
					local me = Player.pos
					local best, bestd2 = nil, 1e18
					for _, p in pairs(plist) do
						if p and p.pos then
							local pcast = (p.castinginfo and (p.castinginfo.channelingid or p.castinginfo.castid)) or p.action
							local unsafe = (pcast == 29648)
							if not unsafe then
								local dx, dy, dz = p.pos.x - me.x, p.pos.y - me.y, p.pos.z - me.z
								local d2 = dx * dx + dy * dy + dz * dz
								if d2 < bestd2 then
									best, bestd2 = p, d2
								end
							end
						end
					end
					if not best then
						-- fallback: no “safe” detected, just pick nearest pillar to minimize risk
						for _, p in pairs(plist) do
							if p and p.pos then
								local dx, dy, dz = p.pos.x - me.x, p.pos.y - me.y, p.pos.z - me.z
								local d2 = dx * dx + dy * dy + dz * dz
								if d2 < bestd2 then
									best, bestd2 = p, d2
								end
							end
						end
					end
					if not best then
						return
					end

					-- Compute a hide point just behind the pillar, opposite the boss -> pillar vector
					local sx, sy, sz = best.pos.x, best.pos.y, best.pos.z
					local bx, by, bz = boss.pos.x, boss.pos.y, boss.pos.z
					local vx, vz = sx - bx, sz - bz
					local len = math.sqrt(vx * vx + vz * vz)
					if len == 0 then
						len = 1
					end
					vx, vz = vx / len, vz / len
					local offset = 1.9 -- tweak 1.6–2.2 if needed
					local hx, hy, hz = sx + vx * offset, sy, sz + vz * offset

					-- Move there (light throttle and brief avoidance pause to avoid wiggle)
					if (now - (_SNOW_FENRIR.lastMove or 0)) >= 120 then
						(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo or Player.MoveTo)(
							hx,
							hy,
							hz
						)
						KitanoiSettings.avoidingtime = now + 600
						_SNOW_FENRIR.lastMove = now
					end
				end
			]]
		},
	--	[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
	--			function customfunction()
	--				KitanoiFuncs.LoadMesh("[Dungeon] Snowcloak v2")
	--			end
	--		]]
	--	},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			contentid = "11372",
			desc = "stacking",
			detectwho = "any",
			id = 161,
			movetoentity = true,
			precise = false,
			timetoreturn = 5,
			type = "move",
		},
		[2] = {
			contentid = "11384",
			desc = "stacking",
			detectwho = "any",
			id = 317,
			movetoentity = true,
			precise = false,
			timetoreturn = 5,
			type = "move",
		},
	},
	tethers = {},
	excludeavoid = {},
	limitbreak = {},
	staybehindentity = {},
	puddledata = {},
	enemylos = true,
}

return tbl