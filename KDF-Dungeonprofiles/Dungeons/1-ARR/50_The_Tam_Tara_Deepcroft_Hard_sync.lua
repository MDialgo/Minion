local tbl = {
	name = "The Tam-Tara Deepcroft (Hard)",
	mesh ="[Dungeon] The Tam-Tara Deepcroft (Hard)",
	dutyid = 373,
	level = 50,
	expansion = 2,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 39.78, y = 16.40, z = 98.56}},
		[2] = {objective = 2, pos = {x = 87.84, y = 22.20, z = -41.47}},
		[3] = {objective = 3, pos = {x = -51.64, y = 14.20, z = -14.39}},
	},
	interactdistance = 80,
	interacts = {
		[1] = {contentid = 332, priority = 1, type = "Loot 1"},
		[2] = {contentid = 336, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 333, priority = 3, type = "Loot 2"},
		[4] = {contentid = 2004090, req = {objective = 1, complete = true}, priority = 4, type = "Defiled Coffin"},
		[5] = {contentid = 2004091, req = {objective = 1, complete = true}, priority = 5, type = "Defiled Coffin"},
		[6] = {contentid = 334, priority = 6, type = "Loot 3"},
		[7] = {contentid = 2004092, req = {objective = 1, complete = true}, priority = 7, type = "Defiled Coffin"},
		[8] = {contentid = 337, priority = 8, type = "Boss 2 Loot"},
		[9] = {contentid = 2004095, req = {objective = 2, complete = true}, priority = 9, type = "Aetherial Flow"},
		[10] = {contentid = 335, priority = 10, type = "Loot 4"},
		[11] = {contentid = 339, priority = 11, type = "Boss 3 Loot"}, -- N/A
	},
	bossids = {
		2852, -- Liavinne
		2855, -- Spare Body
		2860, -- Avere Bravearm -- Faded Copy of Dark Vows
	},
	forcemeleerange = {2852},
	enemytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 2837, priority = 1, type = "Demon Pawn"},
		[2] = {contentid = 2846, priority = 1, type = "Dantalion"},
		[3] = {contentid = 2857, priority = 1, type = "Groom-to-be"},
	},
	avoidentity = {
		[1] = {contentid= 2861, radius = 7}, -- Edda Pureheart
	},
	tankat = {
		[1] = {contentid = 2855, frompercent = 100, topercent = 0, pos = {x = 88.10, y = 22.10, z = -58.24}, desc = "tank the 2nd boss here"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Intercept Spirits", functioncode = [[
				_SPARE_INT = _SPARE_INT or {last = 0, lastMove = 0}
				local now = (Now and Now()) or (os.clock() * 1000)
				local pulse = gPulseTime or 150
				if (now - (_SPARE_INT.last or 0)) < pulse then
					return
				end
				_SPARE_INT.last = now

				if not Player or not Player.incombat then
					return
				end
				if Player.role == 1 then
					return
				end -- tank stays on boss

				-- don't cancel a heal that's mid-cast
				if Player.role == 4 and MIsCasting and MIsCasting() then
					return
				end

				local BOSS_CID = 2855
				local SPIRIT_CIDS = {2854,2853}
				local MOVE_EVERY = 140 -- ms throttle on MoveTo
				local ARRIVE = 1.2 -- yds stop range

				-- distance helpers
				local function d2(p, q)
					local dx, dy, dz = p.x - q.x, p.y - q.y, p.z - q.z
					return dx * dx + dy * dy + dz * dz
				end
				local function d(p, q)
					return math.sqrt(d2(p, q))
				end

				-- find boss (also gives us a good "center" reference)
				local bl = MEntityList and MEntityList("contentid=" .. BOSS_CID .. ",alive,targetable,maxdistance=80,nearest") or {}
				local _, boss = next(bl)
				if not boss or not boss.pos then
					return
				end
				local center = boss.pos

				-- gather spirits
				local raw = {}
				for _, cid in ipairs(SPIRIT_CIDS) do
					local list = MEntityList and MEntityList("contentid=" .. cid .. ",alive,maxdistance=80") or {}
					for _, e in pairs(list) do
						if e and e.pos then
							raw[#raw + 1] = e
						end
					end
				end
				if #raw == 0 then
					return
				end

				-- === deterministic distribution by party index ===
				local myidx = 1
				local plist = (EntityList and EntityList.myparty) or {}
				local ids = {}
				for id, _ in pairs(plist) do
					ids[#ids + 1] = id
				end
				ids[#ids + 1] = Player.id
				table.sort(ids)
				for i, v in ipairs(ids) do
					if v == Player.id then
						myidx = i
						break
					end
				end

				-- collect spirits into an array
				local spirits = {}
				for _, e in ipairs(raw) do
					spirits[#spirits + 1] = e
				end
				table.sort(
					spirits,
					function(a, b)
						local ac, bc = d2(a.pos, center), d2(b.pos, center)
						if ac ~= bc then
							return ac < bc
						end
						return a.id < b.id
					end
				)

				-- pick one by index so we spread out
				local pick = spirits[((myidx - 1) % math.max(1, #spirits)) + 1]

				-- tiny per-player bias: if *my* nearest is much closer, override
				local nearest, nd = nil, 1e9
				for _, e in ipairs(spirits) do
					local dd = d(Player.pos, e.pos)
					if dd < nd then
						nearest, nd = e, dd
					end
				end
				if nearest and pick and nd < d(Player.pos, pick.pos) - 3.0 then
					pick = nearest
				end

				local best = pick

				-- target it so your rotation actually hits it
				if Player.SetTarget and Player.targetid ~= best.id then
					Player:SetTarget(best.id)
				end

				-- move to it (light throttle so we don't spam nav)
				local dist = d(Player.pos, best.pos)
				if dist > ARRIVE and (now - (_SPARE_INT.lastMove or 0)) >= MOVE_EVERY then
					local move =
						(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo) or
						(Player and Player.MoveTo)
					if move then
						move(best.pos.x, best.pos.y, best.pos.z)
						KitanoiSettings.avoidingtime = now + 400
						_SPARE_INT.lastMove = now
					end
				end
			]]
		},
	},
	overheadmarkers = {},
	staybehindentity = {2852},
}

return tbl