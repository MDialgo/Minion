local tbl = {
	name = "Smileton",
	mesh = "[Mist] Smileton",
	dutyid = 976,
	level = 90,
	expansion = 6,
	creator = "Mist#4283",
	notes = [[
	- Use old avoidance - need to work out some things on boss 1 for new avoidance
	- Boss 3 marker 139 is the biggest wipe danger
	- FFA needed for boss 2->3 zone boundary
	]],
	queuetype = 2,
	FFA = true,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -45.00, y = 196.00, z = -33.50}},
		[2] = {objective = 2, pos = {x = -45.00, y = 196.00, z = -33.50}},
		[3] = {objective = 3, pos = {x = 64.00, y = -38.80, z = -117.00}},
		[4] = {objective = 4, pos = {x = 64.00, y = -38.80, z = -117.00}},
		[5] = {objective = 5, pos = {x = -26.26, y = -464.80, z = -43.93}},
		[6] = {objective = 6, pos = {x = -26.26, y = -464.80, z = -43.93}},
	},
	interacts = {
		[1] = {contentid = 1389, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1385, priority = 1, type = "Loot 1"},
		[3] = {contentid = 1386, priority = 1, type = "Loot 2"},
		[4] = {contentid = 1390, priority = 1, type = "Boss 2 Loot"},
		[5] = {contentid = 1387, priority = 1, type = "Loot 3"},
		[6] = {contentid = 1388, priority = 1, type = "Loot 4"},
		[7] = {contentid = 1391, priority = 1, type = "Boss 3 Loot"}, -- Prince Lunatender & Carrots of Happiness Orchestrion Roll
	},
	bossids = {
		10331, -- Face
		10333, -- Frameworker
		10336, -- The Big Cheese
	},
	forcemeleerange = {10331},
	prioritytarget = {},
	avoidentity = {},
	advancedavoid = {
		[1] = { -- ===== Boss 1 (Face) =====
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				-- ==== Smileton Boss 1 — Z-lane swap, dynamic midline, anti-double-stack ====
				SB1Z = SB1Z or {
				  rev=10,
				  BUFF_SM=2763, BUFF_FR=2764,     -- Smiley / Frowny on you
				  CH_SM=26423, CH_FR=26422,       -- small-face channels (smiley / frowny)
				  CH_MIX=26424, CH_LAWN=27742,    -- Mixed Feelings / Off My Lawn
				  BIG="contentid=10331", SMALL="contentid=10332",
				  last=0, mode="idle",            -- "idle" | "swap" | "wait"
				  wantZ=nil, lastBuff=nil, hold_until=0, max_wait_until=0,
				}
				local sb, pulse = SB1Z, (gPulseTime or 150)
				local p = (TensorCore and TensorCore.mGetPlayer()) or Player
				local t = (TensorCore and TensorCore.mGetTarget()) or (Player and Player:GetTarget())
				if not p or not p.incombat or (t and t.contentid ~= 10331) then return end
				if TimeSince(sb.last or 0) < pulse then return end

				KitanoiSettings.DFIndexedExcludeAvoid = KitanoiSettings.DFIndexedExcludeAvoid or {}
				local function NOW() return (Now and Now()) or (os.clock()*1000) end
				local function abs(x) return x<0 and -x or x end

				-- scan small faces -> Z lists & midline between the extreme rows
				local function scanLanes()
				  local zsSm, zsFr = {}, {}
				  local minZ, maxZ =  1e9, -1e9
				  local list = MEntityList and MEntityList(sb.SMALL..",alive") or {}
				  for _, e in pairs(list) do
					if e and e.pos then
					  if e.action == sb.CH_SM or e.castingid == sb.CH_SM then
						zsSm[#zsSm+1] = e.pos.z
						if e.pos.z < minZ then minZ = e.pos.z end
						if e.pos.z > maxZ then maxZ = e.pos.z end
					  elseif e.action == sb.CH_FR or e.castingid == sb.CH_FR then
						zsFr[#zsFr+1] = e.pos.z
						if e.pos.z < minZ then minZ = e.pos.z end
						if e.pos.z > maxZ then maxZ = e.pos.z end
					  end
					end
				  end
				  local mid = (minZ < maxZ) and ((minZ + maxZ) * 0.5) or (p.pos and p.pos.z or -19.5)
				  return zsSm, zsFr, mid
				end

				local function nearestZ(zs, curZ)
				  local best, bestd = nil, 1e9
				  for i=1,#zs do
					local d = abs(zs[i] - curZ)
					if d < bestd then best, bestd = zs[i], d end
				  end
				  return best
				end

				-- knock/suck adjustment along Z from Off My Lawn (re-evaluated every pulse)
				local zAdj = 0
				do
				  if TensorCore and TensorCore.isAnyEntityCasting then
					local lawn, caster = TensorCore.isAnyEntityCasting(sb.CH_LAWN, sb.BIG)
					if lawn and caster and caster.pos and caster.pos.z then
					  if     caster.pos.z == -5    then zAdj =  8   -- toward boss (north)
					  elseif caster.pos.z == -33.5 then zAdj = -8   -- toward entrance (south)
					  else zAdj = 0 end
					else
					  zAdj = 0
					end
				  end
				end

				-- your current buff
				local hasSm = TensorCore and TensorCore.hasBuff and TensorCore.hasBuff(p.id, sb.BUFF_SM)
				local hasFr = TensorCore and TensorCore.hasBuff and TensorCore.hasBuff(p.id, sb.BUFF_FR)
				local cur   = hasSm and "sm" or (hasFr and "fr" or nil)

				-- Mixed Feelings active?
				local mixed = (TensorCore and TensorCore.isAnyEntityCasting and TensorCore.isAnyEntityCasting(sb.CH_MIX, sb.BIG)) or false
				if not mixed then
				  KitanoiSettings.DFIndexedExcludeAvoid[sb.CH_MIX] = nil
				  sb.mode, sb.wantZ, sb.hold_until, sb.max_wait_until = "idle", nil, 0, 0
				  sb.last = Now()
				  return
				end

				-- allow crossing the Mixed lines only while actively swapping/holding
				if sb.mode ~= "idle" then KitanoiSettings.DFIndexedExcludeAvoid[sb.CH_MIX] = true
				else                         KitanoiSettings.DFIndexedExcludeAvoid[sb.CH_MIX] = nil
				end

				-- enter swap when Mixed is up and we have a face buff
				if sb.mode == "idle" and cur then
				  sb.mode     = "swap"
				  sb.lastBuff = cur
				  sb.wantZ    = nil
				end

				-- recompute desired lane Z each pulse (handles Upside Down flips)
				local zsSm, zsFr, MID_Z = scanLanes()
				if sb.mode ~= "idle" and cur and p.pos then
				  local targetSet = (cur=="sm") and zsFr or zsSm          -- go to opposite face
				  local desired   = nearestZ(targetSet, p.pos.z)          -- pick nearest row
				  if desired then sb.wantZ = desired end
				end

				-- movement core (Z only; keep X fixed)
				if sb.mode ~= "idle" and sb.wantZ and p.pos then
				  local zGoal   = sb.wantZ + zAdj
				  local dz      = zGoal - p.pos.z
				  local arrived = abs(dz) <= 0.65
				  local SIDE_MARGIN = 3.0  -- how far from the midline we clamp while waiting

				  if sb.mode == "swap" then
					if not arrived then
					  if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
						KitanoiNavigation.NavAPI.MoveTo(p.pos.x, p.pos.y, zGoal)
					  else
						Player:MoveTo(p.pos.x, p.pos.y, zGoal)
					  end
					  KitanoiSettings.avoidingtime = NOW() + 2800
					else
					  -- arrived → hold long enough to guarantee one opposite hit
					  sb.mode = "wait"
					  sb.hold_until     = NOW() + 4200
					  sb.max_wait_until = NOW() + 6200
					  KitanoiSettings.avoidingtime = sb.hold_until
					end

				  elseif sb.mode == "wait" then
					-- did our buff flip? (we took the opposite hit)
					local flipped = (sb.lastBuff and cur and cur ~= sb.lastBuff)
					if flipped then
					  KitanoiSettings.DFIndexedExcludeAvoid[sb.CH_MIX] = nil
					  sb.mode, sb.wantZ, sb.hold_until, sb.max_wait_until = "idle", nil, 0, 0
					else
					  -- clamp to our half of the arena so we never drift back across the midline
					  local wantNorth = (zGoal < MID_Z)  -- remember: toward boss is more negative Z
					  local clampZ = wantNorth and (MID_Z - SIDE_MARGIN) or (MID_Z + SIDE_MARGIN)
					  -- pick a point on our side, leaning *away* from the midline
					  local safeZ = wantNorth and math.min(zGoal, clampZ) or math.max(zGoal, clampZ)

					  if abs(safeZ - p.pos.z) > 0.5 then
						if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
						  KitanoiNavigation.NavAPI.MoveTo(p.pos.x, p.pos.y, safeZ)
						else
						  Player:MoveTo(p.pos.x, p.pos.y, safeZ)
						end
					  end
					  KitanoiSettings.avoidingtime = math.max(sb.hold_until or 0, NOW() + 800)

					  -- safety timeout: took one tick, release even if flip not observed yet
					  if NOW() >= (sb.max_wait_until or 0) then
						KitanoiSettings.DFIndexedExcludeAvoid[sb.CH_MIX] = nil
						sb.mode, sb.wantZ, sb.hold_until, sb.max_wait_until = "idle", nil, 0, 0
					  end
					end
				  end
				end

				sb.last = Now()
			]]
		},
		[2] = { -- ===== Boss 3 (Big Cheese) =====
		type = "custom",
		customdetails = "function",
		functionname = "customfunction",
		functioncode = [[
			-- ==== Smileton Boss 3 (Big Cheese) — KDF-native inline (Mirrors Mist) ====
			if SmiletonBoss3 == nil then
				SmiletonBoss3 = {
					revision = 2,
					entity_big_cheese = 10336,
					ne_sw_safe_pattern = "064128", -- NE/SW diagonal
					nw_se_safe_pattern = "164128", -- NW/SE diagonal
					channel_right_disassembler = 26447, -- (south) not used here, kept for reference
					channel_left_disassembler = 26448, -- (north) not used here, kept for reference
					ne = {pos = {x = -11, y = -465, z = -49}, safe = true},
					nw = {pos = {x = -33, y = -465, z = -49}, safe = true},
					se = {pos = {x = -11, y = -465, z = -39}, safe = true},
					sw = {pos = {x = -33, y = -465, z = -39}, safe = true},
					mechanics_resolution_ms = 8000,
					last_run = 0
				}
				function SmiletonBoss3.log(str)
					d("[SmiletonBoss3_r" .. SmiletonBoss3.revision .. "] " .. tostring(str))
				end
			end

			local sb3 = SmiletonBoss3
			local sme = KitanoiSettings.SavedMapEffects
			local t = TensorCore.mGetTarget()
			local p = TensorCore.mGetPlayer()

			-- throttle + gates (same as Mist)
			if
				(TimeSince(sb3.last_run or 0) < (gPulseTime or 150)) or (not p or not p.incombat) or
					(t and t.contentid ~= sb3.entity_big_cheese)
			then
				return
			end

			-- reset corner safety each tick
			sb3.ne.safe, sb3.nw.safe, sb3.se.safe, sb3.sw.safe = true, true, true, true

			-- mark bombs (exact corner matches, as Mist did)
			local excavation_bombs = TensorCore.entityList("contentid=11216,action=34")
			if table.valid(excavation_bombs) then
				for i, bomb in pairs(excavation_bombs) do
					if bomb.pos then
						local bx, bz = bomb.pos.x, bomb.pos.z
						if (bx == sb3.ne.pos.x and bz == sb3.ne.pos.z) then
							sb3.ne.safe = false
						elseif (bx == sb3.nw.pos.x and bz == sb3.nw.pos.z) then
							sb3.nw.safe = false
						elseif (bx == sb3.se.pos.x and bz == sb3.se.pos.z) then
							sb3.se.safe = false
						elseif (bx == sb3.sw.pos.x and bz == sb3.sw.pos.z) then
							sb3.sw.safe = false
						end
						-- optional visual aid, same as Mist
						if KitanoiFuncs.puddledata[i] == nil then
							KitanoiFuncs.puddledata[i] = {entity = bomb, pos = bomb.pos, radius = 8, duration = Now() + 30000}
						end
					end
				end
			end

			-- diagonal via MapEffects (exact Mist logic: requires .timeadded to be recent)
			if
				sme and sme[sb3.ne_sw_safe_pattern] and sme[sb3.ne_sw_safe_pattern].timeadded and
					(TimeSince(sme[sb3.ne_sw_safe_pattern].timeadded) <= sb3.mechanics_resolution_ms)
			then
				-- NE/SW pattern → prefer SW, else NE
				local dpos = (sb3.sw.safe and sb3.sw.pos) or sb3.ne.pos
				Player:MoveTo(dpos.x, dpos.y, dpos.z)
				KitanoiSettings.avoidingtime = Now() + (gPulseTime or 150)
			end

			if
				sme and sme[sb3.nw_se_safe_pattern] and sme[sb3.nw_se_safe_pattern].timeadded and
					(TimeSince(sme[sb3.nw_se_safe_pattern].timeadded) <= sb3.mechanics_resolution_ms)
			then
				-- NW/SE pattern → prefer NW, else SE
				local dpos = (sb3.nw.safe and sb3.nw.pos) or sb3.se.pos
				Player:MoveTo(dpos.x, dpos.y, dpos.z)
				KitanoiSettings.avoidingtime = Now() + (gPulseTime or 150)
			end

			sb3.last_run = Now()
		]]
		},
	},
	avoidancetype = 1, -- 1 = New, 2 = Old
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = 10336,
			desc = "last boss stack",
			type = "move",
			detectwho = "any",
			timetoreturn = 6,
			pos = {
				[1] = {x = -27.08, y = -464.80, z = -44.08},
				[2] = {x = -27.08, y = -464.80, z = -44.08},
				[3] = {x = -27.08, y = -464.80, z = -44.08},
				[4] = {x = -27.08, y = -464.80, z = -44.08},
			},
		},
		[2] = {
			id = 139,
			contentid = 10336,
			desc = "last boss spread",
			type = "move",
			detectwho = "me",
			timetoreturn = 6,
			pos = {
				[1] = {x = -26.43, y = -464.80, z = -43.98},
				[2] = {x = -22.07, y = -464.80, z = -48.04},
				[3] = {x = -17.94, y = -464.80, z = -43.99},
				[4] = {x = -22.07, y = -464.80, z = -39.97},
			},
		},

	},
	excludeavoid = {26421,26422,26423,26435,26445,26437},
}

return tbl