local tbl = {
	name = "O12S Alphascape V4.0 (Savage)",
	mesh = "The Interdimensional Rift",
	dutyid = 805,
	level = 70,
	expansion = 4,
	creator = "Dialgo",
	notes = [[Solo possible only as a Tank (tested on Ilvl 770 unmelded)
	- PLD: HMACRPack = OK
	- WAR: RikuWAR+TensorReactions = OK / HMACRPack = OK
	- GNB: HMACRPack = OK
	- TensorReactions used for RikuWAR
	]],
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=1000,y=0,z=100}},
	},
	interacts = {
		[1] = {contentid = 1086, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1087, priority = 2, type = "Loot 2"},
	},
	bossids = {
		7633, -- Omega-M
		7634, -- Omega-F
		7636, -- Omega -- Alphascape Datalog v4.0
	},
	forcemeleerange= {7633,7634,7636}, -- 7633 = M, 7634 = F
	enemytargetdistance = 50,
	prioritytarget = {
		--[1] = {contentid = 7633, priority = 1, desc="Omega M"},
		--[1] = {contentid = 7634, priority = 1, desc="Omega F"},
	},
	tankat= {
		[1] = {contentid = 7633, frompercent = 100, topercent = 70, pos = {x = 117, y = 0.00, z = 100}, desc = "Tank at this pos from 100-70%"},
		--[2] = {contentid = 7634, frompercent = 100, topercent = 1, pos = {x = 117, y = 0.00, z = 100}, desc = "Tank at this pos from 100-70%"},
		[3] = {contentid = 7636, frompercent = 100, topercent = 1, pos = {x = 100, y = 0.00, z = 110}, desc = "Tank at this pos from 100-1%"},
	},
	useaction = {},
	advancedavoid = {
		--[[[1] = {
			castingid = 13099, --- Beyond Defense
			type = "multifixed",
			pos = {
				[1] = {x = 117, y = 0, z = 100},
				[2] = {x = 117, y = 0, z = 100},
				[3] = {x = 117, y = 0, z = 100},
				[4] = {x = 117, y = 0, z = 100},
				[5] = {x = 117, y = 0, z = 100},
				[6] = {x = 117, y = 0, z = 100},
				[7] = {x = 117, y = 0, z = 100},
				[8] = {x = 117, y = 0, z = 100},
			},
		},]]
		[2] = {type = "custom", customdetails = "function", functionname = "Boss Switcher", functioncode = [[
				-- O12S Omega F/M focus helper
				--  - With buff 1660/1661: focus the “correct” opposite boss
				--  - Without buff: focus the boss with higher HP%
				--  - If both bosses are ~1% or lower: do nothing (avoid focus ping-pong)

				_FOCUS_HELPER = _FOCUS_HELPER or { last = 0 }
				if TimeSince(_FOCUS_HELPER.last) < 500 then return end
				if not Player or not Player.incombat then return end

				local CID_M = 7633  -- Omega-M
				local CID_F = 7634  -- Omega-F

				-- helper: try to get an HP fraction safely, whatever fields exist
				local function hpFrac(e)
					if not e then return 0 end
					local cur, maxv

					if type(e.hp) == "number" then
						cur = e.hp
					elseif type(e.hp) == "table" then
						cur = e.hp.current or e.hp[1]
						maxv = e.hp.max or maxv
					end

					if type(e.hpcurrent) == "number" then cur = cur or e.hpcurrent end
					if type(e.hpmax) == "number" then maxv = maxv or e.hpmax end
					if type(e.hpmax) == "number" then maxv = maxv or e.hpmax end
					if type(e.hpmax) == "table" then maxv = maxv or e.hpmax.max end

					-- some versions expose hpmax directly
					if type(e.hpmax) == "number" then maxv = maxv or e.hpmax end

					if not cur then cur = 0 end
					if not maxv or maxv <= 0 then maxv = 1 end
					return cur / maxv
				end

				-- grab both bosses in one list
				local both = MEntityList and MEntityList("contentid=7633,7634,alive,targetable,maxdistance=80") or {}
				local bossM, bossF
				for _, ent in pairs(both) do
					if ent.contentid == CID_M then
						bossM = ent
					elseif ent.contentid == CID_F then
						bossF = ent
					end
				end
				if not bossM and not bossF then return end

				-- decide desiredCid
				local desiredCid

				-- 1) Normal behaviour: use your buff to pick opposite boss
				local hasF = HasBuff and HasBuff(Player.id, 1660)  -- “fight F” buff
				local hasM = HasBuff and HasBuff(Player.id, 1661)  -- “fight M” buff

				if hasF then
					desiredCid = CID_F
				elseif hasM then
					desiredCid = CID_M
				else
					-- 2) No buff: pick the boss with higher HP%, but only if
					--    they aren't both basically at 1% (phase transition)
					local fF = hpFrac(bossF)
					local fM = hpFrac(bossM)
					local low = 0.015  -- ~1.5%

					if (fF < low and fM < low) then
						-- both almost dead, don't thrash focus
						return
					end

					if fM > fF then
						desiredCid = CID_M
					else
						desiredCid = CID_F
					end
				end

				if not desiredCid then return end

				-- already focused correctly?
				local curFocus = Player.GetFocusTarget and Player:GetFocusTarget() or nil
				if curFocus and curFocus.contentid == desiredCid then return end

				-- pick the actual entity we want to focus
				local targetEnt = (desiredCid == CID_M and bossM) or (desiredCid == CID_F and bossF) or nil
				if not targetEnt then
					local list = MEntityList("contentid=" .. tostring(desiredCid) .. ",targetable,alive,nearest")
					if not list then return end
					_, targetEnt = next(list)
					if not targetEnt then return end
				end

				-- set focus (prefer API; fallback to text command)
				if Player.SetFocus then
					Player:SetFocus(targetEnt.id)
				else
					if Player.targetid ~= targetEnt.id and Player.SetTarget then
						Player:SetTarget(targetEnt.id)
					end
					if SendTextCommand then SendTextCommand("/focustarget") end
				end

				_FOCUS_HELPER.last = Now()
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "O12S_KnockbackSafeFromBuff1676", functioncode = [[
				-- While Omega has buff 1676, stand between boss and center, hugging the boss,
				-- so knockbacks push you across the arena instead of off the edge.

				_O12S_KB = _O12S_KB or { last = 0 }
				local now   = (Now and Now()) or (os.clock() * 1000)
				local pulse = gPulseTime or 150
				if (now - (_O12S_KB.last or 0)) < pulse then return end
				_O12S_KB.last = now

				if not Player or not Player.pos or not Player.incombat then return end

				-- don't mess with positioning while we have the stack marker (62)
				local markerup = KitanoiFuncs and KitanoiFuncs.IsMarkerUp and KitanoiFuncs.IsMarkerUp(62)
				local Ihave    = KitanoiFuncs and KitanoiFuncs.DoIHaveMarker and KitanoiFuncs.DoIHaveMarker(62)

				-- if *I* have the stack, or it's currently active anywhere, let the stack logic handle movement
				if Ihave or markerup then
					return
				end

				local CENTER     = { x = 100, y = 0, z = 100 }
				local BOSS_CIDS  = { 7635, 7634 }   -- 7635 before transform, 7634 after
				local BUFF_ID    = 1676             -- knockback prep buff
				local HUG_OFFSET = 0.5              -- metres inside boss toward center

				local function hasBuff(entity, buffid)
					if not entity then return false end
					local buffs = entity.buffs or (entity.GetBuffs and entity:GetBuffs()) or {}
					for _, b in pairs(buffs) do
						local id = b and (b.id or b.buffid or b.statusid)
						if id == buffid then
							return true
						end
					end
					return false
				end

				-- Find the boss (7635 or 7634) that currently has buff 1676
				local boss = nil
				for _, cid in ipairs(BOSS_CIDS) do
					local list = MEntityList and MEntityList("contentid=" .. cid .. ",alive,maxdistance=80") or {}
					for _, e in pairs(list) do
						if e and e.pos and hasBuff(e, BUFF_ID) then
							boss = e
							break
						end
					end
					if boss then break end
				end

				if not boss or not boss.pos then return end

				-- Direction from boss toward arena center
				local vx = CENTER.x - boss.pos.x
				local vz = CENTER.z - boss.pos.z
				local len = math.sqrt(vx*vx + vz*vz)
				if len < 0.1 then return end
				vx, vz = vx / len, vz / len

				-- Stand slightly inside the boss, toward center
				local px = boss.pos.x + vx * HUG_OFFSET
				local py = boss.pos.y
				local pz = boss.pos.z + vz * HUG_OFFSET

				local move =
					(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo)
					or (Player and Player.MoveTo)

				if move then
					move(px, py, pz)
					KitanoiSettings.avoidingtime = now + 1200
				end
			]]
		},
		[4] = {type = "custom", customdetails = "function", functionname = "O12S_ResetOnBuff1662", functioncode = [[
				-- If either boss gets buff 1662, run off the platform to hard-reset the fight.
				_O12S_RESET = _O12S_RESET or {last = 0}
				local now = (Now and Now()) or (os.clock() * 1000)
				local pulse = gPulseTime or 150
				if (now - (_O12S_RESET.last or 0)) < pulse then
					return
				end
				_O12S_RESET.last = now

				if not Player or not Player.pos or not Player.incombat then
					return
				end

				-- two bosses: 7633 (female), 7634 (male)
				local bosses = MEntityList and MEntityList("contentid=7633;7634,alive,maxdistance=80") or {}
				local shouldReset = false

				if bosses and next(bosses) then
					for _, b in pairs(bosses) do
						if b and b.id and HasBuff and HasBuff(b.id, 1662) then
							shouldReset = true
							break
						end
					end
				end

				if not shouldReset then
					return
				end

				-- Arena circle: center (100,0,100), south edge (100,0,120)
				-- Run a bit past the south edge so everyone falls and the fight hard-resets.
				local RESET = {x = 100, y = 0, z = 125}

				local move =
					(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo) or (Player and Player.MoveTo)

				if move then
					move(RESET.x, RESET.y, RESET.z)
					KitanoiSettings.avoidingtime = now + 4000
				end
			]]
		},
	},
	reactions = {
		[1] = {name = "Beyond Defense Mitigation",
			cause = [[
				return KitanoiFuncs.ScanForCaster2(13099)
					and ((ActionList:Get(1,7531) and ActionList:Get(1,7531).usable and not ActionList:Get(1,7531).isoncd))
				--		or (ActionList:Get(1,36923) and ActionList:Get(1,36923).usable and not ActionList:Get(1,36923).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,7531) and ActionList:Get(1,7531).usable and not ActionList:Get(1,7531).isoncd) then
					ActionList:Get(1,7531):Cast(Player.id)
				--elseif (ActionList:Get(1,36923) and ActionList:Get(1,36923).usable and not ActionList:Get(1,369239).isoncd) then
				--	ActionList:Get(1,36923):Cast(Player.id)
				end
			]],
		},
		[2] = {name = "Invuln PLD", -- KitanoiFuncs.ScanForCaster2(IDs,maxtimer,mintimer,returntbl,showcast,delay,targetingme)
			cause = [[
				return (Player.job == 19 and KitanoiFuncs.ScanForCaster2(13128,4,3)
					and(ActionList:Get(1,30) and ActionList:Get(1,30).usable and not ActionList:Get(1,30).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,30) and ActionList:Get(1,30).usable and not ActionList:Get(1,30).isoncd) then
					ActionList:Get(1,30):Cast(Player.id)
				end
			]],
		},
		[3] = {name = "Invuln WAR",
			cause = [[
				return (Player.job == 21 and KitanoiFuncs.ScanForCaster2(13128,4,3)
					and(ActionList:Get(1,43) and ActionList:Get(1,43).usable and not ActionList:Get(1,43).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,43) and ActionList:Get(1,43).usable and not ActionList:Get(1,43).isoncd) then
					ActionList:Get(1,43):Cast(Player.id)
				end
			]],
		},
		[4] = {name = "Invuln DRK", -- Would need additional reactions to work in this Raid
			cause = [[
				return (Player.job == 32 and KitanoiFuncs.ScanForCaster2(13128,4,3)
					and(ActionList:Get(1,3638) and ActionList:Get(1,3638).usable and not ActionList:Get(1,3638).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,3638) and ActionList:Get(1,3638).usable and not ActionList:Get(1,3638).isoncd) then
					ActionList:Get(1,3638):Cast(Player.id)
				end
			]],
		},
		[5] = {name = "Invuln GNB",
			cause = [[
				return (Player.job == 37 and KitanoiFuncs.ScanForCaster2(13128,4,3)
					and(ActionList:Get(1,16152) and ActionList:Get(1,16152).usable and not ActionList:Get(1,16152).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,16152) and ActionList:Get(1,16152).usable and not ActionList:Get(1,16152).isoncd) then
					ActionList:Get(1,16152):Cast(Player.id)
				end
			]],
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "7633;7634;7635;7636",
			desc= "",
			type = "justrecord",
			detectwho = "any",
			timetoreturn = 8,
		},
		[2] = {
			id = 62,
			contentid = "7633;7634;7635;7636",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = 117, y = 0, z = 100},
				[2] = {x = 117, y = 0, z = 100},
				[3] = {x = 117, y = 0, z = 100},
				[4] = {x = 117, y = 0, z = 100},
				[5] = {x = 117, y = 0, z = 100},
				[6] = {x = 117, y = 0, z = 100},
				[7] = {x = 117, y = 0, z = 100},
				[8] = {x = 117, y = 0, z = 100},
			},
			returnpos = {
				[1] = {x = 115, y = 0, z = 100},
				[2] = {x = 115, y = 0, z = 100},
				[3] = {x = 115, y = 0, z = 100},
				[4] = {x = 115, y = 0, z = 100},
				[5] = {x = 115, y = 0, z = 100},
				[6] = {x = 115, y = 0, z = 100},
				[7] = {x = 115, y = 0, z = 100},
				[8] = {x = 115, y = 0, z = 100},
			},
			timetoreturn = 5
		},
	},
	excludeavoid = {},
	overrideaoedetails = {
		fan = {
			[13108] = "fan330", -- Superliminal Motion
			[13161] = "fan120", -- Diffuse Wave Cannon
		},
	},
	cancelKB = true,
}

return tbl