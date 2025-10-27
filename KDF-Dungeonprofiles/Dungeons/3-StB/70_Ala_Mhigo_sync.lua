local tbl = {
	name = "Ala Mhigo",
	mesh = "[Dungeon] Ala Mhigo v2",
	dutyid = 1146,
	level = 70,
	expansion = 4,
	creator = "Kitanoi\nModified by Dialgo for Sync",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -183.06, y = 34.86, z = 72.01}},
		[2] = {objective = 2, pos = {x = -183.06, y = 34.86, z = 72.01}},
		[3] = {objective = 3, pos = {x = 250.06, y = 106.44, z = -78.57}},
		[4] = {objective = 4, pos = {x = 250.06, y = 106.44, z = -78.57}},
		[5] = {objective = 5, pos = {x = 249.99, y = 122, z = -360.18}},
		[6] = {objective = 6, pos = {x = 249.99, y = 122, z = -360.18}},
	},
	interactdistance = 100,
	interacts = {
		[1] = {contentid = 922, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 918, priority = 2, type = "Loot 1"},
		[3] = {contentid = 919, priority = 3, type = "Loot 2"},
		[4] = {contentid = 923, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 920, priority = 5, type = "Loot 3"},
		[6] = {contentid = 921, priority = 6, type = "Loot 4"},
		[7] = {contentid = 924, priority = 7, type = "Boss 3 Loot"}, -- Mount & Orchestrion
	},
	bossids = {
		6037, -- Magitek Scorpion
		6038, -- Aulus mal Asina
		6039, -- Zenos yae Galvus
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 6036, priority = 1, type = "Lazers"},
		[2] = {contentid = 6040, priority = 1, type = "Ame-no-Habakiri"},
		[3] = {contentid = 6041, priority = 2, type = "The Swell"},
		[4] = {contentid = 6042, priority = 3, type = "The Storm"},
	},
	tankat= {},
	advancedavoid = {
		[1] = {castingid = 8262, type = "multifixed", -- Magitek Scorpion : Target Search
			pos = {
				[1] = {x = -206.38, y = 34.87, z = 63.40},
				[2] = {x = -206.38, y = 34.87, z = 81.53},
				[3] = {x = -176.14, y = 34.87, z = 63.40},
				[4] = {x = -176.14, y = 34.87, z = 81.53}
			},
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				-- Magitek Scorpion – Target Search (8262) with robust 2nd-cast hold + global lock
				_SCORP_CTRL = _SCORP_CTRL or { mode=nil, until=0 }  -- shared coordinator

				_SCORP_TS = _SCORP_TS or { last=0, state="idle", start_ts=0, hold_until=0, mypos=nil }
				local now   = (Now and Now()) or ((os and os.clock) and os.clock()*1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_SCORP_TS.last or 0)) or (now - (_SCORP_TS.last or 0))) < pulse then return end
				_SCORP_TS.last = now

				if not Player or not Player.incombat then return end
				local boss = Player:GetTarget(); if not boss or boss.contentid ~= 6037 then return end

				-- your four squares (unchanged)
				local TS_POS = {
				{x=-206.38,y=34.87,z=63.40},
				{x=-206.38,y=34.87,z=81.53},
				{x=-176.14,y=34.87,z=63.40},
				{x=-176.14,y=34.87,z=81.53},
				}

				local function myPartyIndex()
				local ptab = KitanoiFuncs and KitanoiFuncs.ReturnSortedParty and KitanoiFuncs.ReturnSortedParty() or nil
				if not ptab then return nil end
				for i=1,#ptab do if ptab[i]==Player.id then return i end end
				return nil
				end
				local function d2(ax,az,bx,bz) local dx=ax-bx local dz=az-bz return dx*dx+dz*dz end
				local function lockTS(until_ts) _SCORP_CTRL.mode, _SCORP_CTRL.until = "TS", until_ts end

				-- detect cast
				local isCasting = (TensorCore and TensorCore.isAnyEntityCasting and TensorCore.isAnyEntityCasting(8262,"contentid=6037"))
							or (KitanoiFuncs and KitanoiFuncs.ScanForCaster2 and KitanoiFuncs.ScanForCaster2(8262))
							or false

				-- ===== FSM =====
				if _SCORP_TS.state == "idle" then
				if isCasting then
					local idx = myPartyIndex(); if not idx or not TS_POS[idx] then return end
					_SCORP_TS.mypos    = TS_POS[idx]
					_SCORP_TS.start_ts = now
					_SCORP_TS.hold_until = 0
					_SCORP_TS.state    = "casting"
				else
					return
				end
				end

				if _SCORP_TS.state == "casting" then
				-- keep going / staying on our square during the cast
				if _SCORP_TS.mypos and Player.pos and d2(Player.pos.x,Player.pos.z,_SCORP_TS.mypos.x,_SCORP_TS.mypos.z) > (1.0*1.0) then
					if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
					KitanoiNavigation.NavAPI.MoveTo(_SCORP_TS.mypos.x,_SCORP_TS.mypos.y,_SCORP_TS.mypos.z)
					else
					Player:MoveTo(_SCORP_TS.mypos.x,_SCORP_TS.mypos.y,_SCORP_TS.mypos.z)
					end
				end
				-- keep TS lock active while casting
				lockTS(now + 15000)
				KitanoiSettings.avoidingtime = _SCORP_CTRL.until

				-- transition to HOLD:
				--   a) preferred: cast just ended
				--   b) failsafe: > 7.5s since cast start (covers missed edge/flicker)
				local missedEdgeFailsafe = (now - (_SCORP_TS.start_ts or now)) > 7500
				if (not isCasting) or missedEdgeFailsafe then
					_SCORP_TS.hold_until = now + 5500
					_SCORP_TS.state      = "hold"
					lockTS(_SCORP_TS.hold_until)
					KitanoiSettings.avoidingtime = _SCORP_TS.hold_until
				end
				return
				end

				if _SCORP_TS.state == "hold" then
				if (_SCORP_TS.hold_until or 0) > now and _SCORP_TS.mypos and Player.pos then
					if d2(Player.pos.x,Player.pos.z,_SCORP_TS.mypos.x,_SCORP_TS.mypos.z) > (0.9*0.9) then
					if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
						KitanoiNavigation.NavAPI.MoveTo(_SCORP_TS.mypos.x,_SCORP_TS.mypos.y,_SCORP_TS.mypos.z)
					else
						Player:MoveTo(_SCORP_TS.mypos.x,_SCORP_TS.mypos.y,_SCORP_TS.mypos.z)
					end
					end
					KitanoiSettings.avoidingtime = _SCORP_TS.hold_until
					return
				end
				-- release
				_SCORP_TS.state, _SCORP_TS.hold_until, _SCORP_TS.mypos = "idle", 0, nil
				if _SCORP_CTRL.mode == "TS" then _SCORP_CTRL.mode, _SCORP_CTRL.until = nil, 0 end
				return
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				-- Magitek Scorpion – Tail Laser (8264): current-side hold, yields to TS
				_SCORP_CTRL = _SCORP_CTRL or { mode=nil, until=0 }

				_SCORP_TL = _SCORP_TL or { last=0, hold_until=0, side=nil, laneFrac=nil }
				local now   = (Now and Now()) or ((os and os.clock) and os.clock()*1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_SCORP_TL.last or 0)) or (now - (_SCORP_TL.last or 0))) < pulse then return end
				_SCORP_TL.last = now

				if not Player or not Player.incombat then return end
				local boss = Player:GetTarget(); if not boss or boss.contentid ~= 6037 or not boss.pos then return end

				local function lockActive() return (_SCORP_CTRL.until or 0) > now, _SCORP_CTRL.mode end
				local function lock(mode, until_ts)
				  if _SCORP_CTRL.mode ~= "TS" then -- never override TS
					_SCORP_CTRL.mode, _SCORP_CTRL.until = mode, until_ts
				  end
				end

				-- detect Tail Laser
				local casting = (KitanoiFuncs and KitanoiFuncs.ScanForCaster2 and KitanoiFuncs.ScanForCaster2(8264))
							 or (TensorCore and TensorCore.isAnyEntityCasting and TensorCore.isAnyEntityCasting(8264,"contentid=6037"))
							 or false

				-- spread offsets along the chosen side
				local FRACTIONS = { 0.25, 0.45, 0.55, 0.75 }
				local party = KitanoiFuncs and KitanoiFuncs.ReturnSortedParty and KitanoiFuncs.ReturnSortedParty() or nil
				local myIndex=nil; if party then for i=1,#party do if party[i]==Player.id then myIndex=i break end end end

				-- which side am I on *right now* relative to boss facing?
				local function currentSide()
				  local vx, vz = Player.pos.x - boss.pos.x, Player.pos.z - boss.pos.z
				  local hx, hz = math.cos(boss.pos.h),      math.sin(boss.pos.h)
				  local cross  = hx*vz - hz*vx     -- >0 = left of facing, <0 = right
				  return (cross >= 0) and "left" or "right"
				end

				local function sidePoint(side)
				  local sideHeading = (side=="left") and (boss.pos.h + math.pi/2) or (boss.pos.h - math.pi/2)
				  local r = (boss.hitradius or 5) + 6
				  local frac = (_SCORP_TL.laneFrac or FRACTIONS[myIndex or 1] or 0.5)
				  local jitter = (frac - 0.5) * 2.0
				  return {
					x = boss.pos.x + math.cos(sideHeading) * r + math.cos(boss.pos.h) * jitter,
					y = boss.pos.y,
					z = boss.pos.z + math.sin(sideHeading) * r + math.sin(boss.pos.h) * jitter,
				  }
				end

				-- if TS is locking movement, TL does nothing
				local active, mode = lockActive()
				if active and mode=="TS" then return end

				-- start TL hold (only if TS isn’t locking)
				if casting and (not active or mode~="TS") then
				  _SCORP_TL.side      = currentSide()                    -- pick the side we’re already on
				  _SCORP_TL.laneFrac  = FRACTIONS[myIndex or 1] or 0.5
				  _SCORP_TL.hold_until= now + 10000
				  lock("TL", _SCORP_TL.hold_until)
				  KitanoiSettings.avoidingtime = _SCORP_TL.hold_until
				end

				-- maintain TL hold while no TS lock is active
				active, mode = lockActive()
				if (_SCORP_TL.hold_until or 0) > now and (not active or mode=="TL") and _SCORP_TL.side then
				  local dest = sidePoint(_SCORP_TL.side)
				  local dx, dz = dest.x - Player.pos.x, dest.z - Player.pos.z
				  if (dx*dx + dz*dz) > (1.2*1.2) then
					if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
					  KitanoiNavigation.NavAPI.MoveTo(dest.x,dest.y,dest.z)
					else
					  Player:MoveTo(dest.x,dest.y,dest.z)
					end
				  end
				  KitanoiSettings.avoidingtime = _SCORP_TL.hold_until
				  return
				end

				-- release TL lock when done
				if (_SCORP_TL.hold_until or 0) > 0 and now >= _SCORP_TL.hold_until then
				  _SCORP_TL.hold_until=0; _SCORP_TL.side=nil; _SCORP_TL.laneFrac=nil
				  if _SCORP_CTRL.mode=="TL" then _SCORP_CTRL.mode=nil; _SCORP_CTRL.until=0 end
				end
			]]
		},
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				-- Ala Mhigo – Boss 2 (Aulus) “Out of Body” return-to-vessel
				_ALA_BODY = _ALA_BODY or {last = 0}
				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_ALA_BODY.last or 0)) or (now - (_ALA_BODY.last or 0))) < pulse then
					return
				end
				_ALA_BODY.last = now

				if not Player or not Player.incombat then
					return
				end
				-- Only act while we’re actually out of our body
				if not (HasBuff and HasBuff(Player.id, 779)) then
					return
				end -- 779 = Out of Body

				local TETHER_ID = 45
				local VESSEL_CID = 6666

				local function d2(a, b)
					local dx = a.x - b.x
					local dz = a.z - b.z
					return dx * dx + dz * dz
				end

				-- 1) Prefer the exact tether that connects *us* to our vessel
				local best, bestd2 = nil, 1e12
				local tlist = (Argus and Argus.getCurrentTethers and Argus.getCurrentTethers()) or {}
				for srcid, arr in pairs(tlist) do
					for _, t in pairs(arr) do
						local tid = t.id or t.tetherid or t.tetherID
						if tid == TETHER_ID then
							local a = EntityList and EntityList:Get(srcid) or nil
							local b = EntityList and EntityList:Get(t.targetid) or nil
							if a and b then
								local other = nil
								if a.id == Player.id then
									other = b
								elseif b.id == Player.id then
									other = a
								end
								if other and other.contentid == VESSEL_CID and other.pos then
									local cur = d2(Player.pos, other.pos)
									if cur < bestd2 then
										best, bestd2 = other, cur
									end
								end
							end
						end
					end
				end

				-- 2) Fallback: nearest Empty Vessel (in case tether table didn’t catch this tick)
				if not best then
					local list = MEntityList and MEntityList("contentid=" .. VESSEL_CID .. ",alive") or {}
					for _, e in pairs(list) do
						if e.pos then
							local cur = d2(Player.pos, e.pos)
							if cur < bestd2 then
								best, bestd2 = e, cur
							end
						end
					end
				end

				-- 3) Walk to our vessel until the buff ends
				if best and best.pos then
					if bestd2 > (1.2 * 1.2) then
						if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
							KitanoiNavigation.NavAPI.MoveTo(best.pos.x, best.pos.y, best.pos.z)
						else
							Player:MoveTo(best.pos.x, best.pos.y, best.pos.z)
						end
						KitanoiSettings.avoidingtime = now
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	tethers = {},
	excludeavoid = {},
	limitbreak = {},
	puddledata= {},
}

return tbl