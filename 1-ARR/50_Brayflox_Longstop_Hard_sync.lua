local tbl = {
	name = "Brayflox's Longstop (Hard)",
	mesh = "[Dungeon] Brayflox (Hard)",
	dutyid = 362,
	level = 50,
	expansion = 2,
	creator = "Arivi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		-- [1] = {"Key Counter"},
		[1] = {objective = 1, pos = {x = 113.31, y = -2.46, z = -17.15}}, --first boss
		[2] = {objective = 2, pos = {x = 40.19, y = 5.45, z = -99.79}}, --second objective
		[3] = {objective = 3, pos = {x = -2.51, y = 25.30, z = -162.93}}, --second boss
		[4] = {objective = 4, pos = {x = -87.65, y = 19.01, z = -171.00}}, --gates step 1
		[5] = {objective = 5, pos = {x = -87.65, y = 19.01, z = -171.00}}, --gates step 2
		[6] = {objective = 6, pos = {x = -44.37, y = 34.72, z = -235.44}}, --last boss
	},
	interactdistance = 40,
	interacts = {
		[1] = {contentid = 2002325, priority = 1, type = "Tiny Key 1"},
		[2] = {contentid = 267, priority = 2, type = "Loot 1"},
		[3] = {contentid = 2002182, priority = 3, type = "Runstop Headgate"},
		[4] = {contentid = 271, priority = 4, type = "Boss 1 Loot"},
		[5] = {contentid = 268, priority = 5, type = "Loot 2"},
		--[6] = {contentid = 269, priority = 6, type = "Loot 3"}, -- Out of Mesh
		[7] = {contentid = 272, priority = 7, type = "Boss 2 Loot"},
		[8] = {contentid = 270, priority = 8, type = "Loot 4"},
		[9] = {contentid = 2002642, priority = 9, type = "Tiny Key 2"},
		[10] = {contentid = 2002184, priority = 10, type = "Swiftmake Checkgate"},
		[11] = {contentid = 2002644, priority = 11, type = "Tiny Key 3"},
		[12] = {contentid = 2002884, priority = 12, type = "Swiftmake Checkgate"},
		[13] = {contentid = 274, priority = 13, type = "Boss 3 Loot"}, -- Baby Opo-opo & Fury Orchestrion Roll
	},
	bossids = {
		2548, -- Illuminati Commander
		2549, -- Magitek Vangob G-III
		2547, -- Gobmachine G-VI
	},
	forcemeleerange = {2547},
	enemytargetdistance = 45,
	prioritytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 2654, priority = 1, type = "Illuminati Sniper"},
	},
	tankat = {
		[1] = {contentid = 2547, frompercent = 100, topercent = 0, pos = {x = -15.60, y = 35.66, z = -235.29}, desc = "tank the 3rd Boss here"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Boss 3 Bombs", functioncode = [[
				-- Stay at hold point while any 1385 is alive; target bombs within 15y of the hold.
				KitanoiSettings = KitanoiSettings or {}
				KitanoiSettings._stay1385 = KitanoiSettings._stay1385 or {last = 0}

				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local since =
					(TimeSince and TimeSince(KitanoiSettings._stay1385.last or 0)) or (now - (KitanoiSettings._stay1385.last or 0))
				if since < 150 then
					return
				end
				KitanoiSettings._stay1385.last = now

				if not Player or not Player.pos then
					return
				end

				-- hold point
				local hx, hy, hz = -28.10, 35.26, -236.30

				-- any bombs (contentid=1385) alive?
				local bombs = MEntityList and MEntityList("contentid=1385,targetable,alive") or nil
				if not bombs or not next(bombs) then
					return
				end

				-- keep the group at the hold point
				local p = Player.pos
				local distHold = math.distance3d(p, {x = hx, y = hy, z = hz})
				if distHold > 1.5 then
					if KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo then
						KitanoiNavigation.NavAPI.MoveTo(hx, hy, hz)
					else
						Player:MoveTo(hx, hy, hz)
					end
					KitanoiSettings.avoidingtime = (Now and Now()) or now
				end

				-- find the nearest bomb within 15y *of the hold point* and target it
				local nearest, best = nil, 1e9
				for _, e in pairs(bombs) do
					if e and e.pos then
						local d = math.distance3d(e.pos, {x = hx, y = hy, z = hz})
						if d <= 15 and d < best then
							best = d
							nearest = e
						end
					end
				end

				if nearest and Player.SetTarget and Player.targetid ~= nearest.id then
					Player:SetTarget(nearest.id)
					-- small stickiness so other logic doesn't immediately override
					KitanoiSettings.avoidingtime = (Now and Now()) or now
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "Scramble safety hold (6s)", functioncode = [[
				local iscastingscramble = KitanoiFuncs.ScanForCaster2(1928)
				if (iscastingscramble) then
						KitanoiNavigation.NavAPI.MoveTo(-28.10,35.26,-236.30)
						KitanoiSettings.avoidingtime = KitanoiFuncs.Now() + 6000
				end
			]]
		},
		-- 3rd function for Hit & Run at the end WIP
	},
	staybehindentity = {2547},
	puddledata = {
		[1] = {castid = 1926, desc = "Second boss puddle", duration = 30, radius = 10},
	},
}

return tbl