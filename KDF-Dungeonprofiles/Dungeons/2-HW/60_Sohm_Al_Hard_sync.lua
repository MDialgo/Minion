local tbl = {
	name = "Sohm Al (Hard)",
	mesh = "[Dungeon] Sohm Al (Hard)",
	dutyid = 617,
	level = 60,
	expansion = 3,
	creator = "Exmachinas",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 152.42, y = 137.71, z = 261.89 }},
		[2] = {objective = 2, pos = {x = 288.59, y = 112.20, z = 119.46 }},
		[3] = {objective = 3, pos = {x = 288.59, y = 112.20, z = 119.46 }},
		[4] = {objective = 4, pos = {x = 288.59, y = 112.20, z = 119.46 }},
		[5] = {objective = 5, pos = {x = 127.99, y = 107.40, z = -313.27 }},
		[6] = {objective = 6, pos = {x = 127.99, y = 107.40, z = -313.27 }},
	},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 879, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 875, priority = 2, type = "Loot 1"},
		[3] = {contentid = 876, priority = 3, type = "Loot 2"},
		[4] = {contentid = 880, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 877, priority = 5, type = "Loot 3"},
		[6] = {contentid = 878, priority = 6, type = "Loot 4"},
		[7] = {contentid = 881, priority = 7, type = "Boss 3 Loot"}, -- N/A
	},
	bossids = {
		5529, -- The Leightonward
		5530, -- Gowrow
		5531, -- Lava Scorpion
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 3797, priority = 1, type = "Blood of the Mountain"},
		[2] = {contentid = 5532, priority = 1, type = "Scorpion's Claw"},
		[3] = {contentid = 5533, priority = 2, type = "Scorpion's Tail"},
	},
	ignoretarget = {2561},
	avoidentity= {},
	tankat = {
		[1] = {contentid = 5529, desc = "tank first boss", frompercent = 100, pos = {x = 147.25, y = 137.75, z = 265.67}, topercent = 0},
		[2] = {contentid = 5531, desc = "tank third boss", frompercent = 100, pos = {x = 128.00, y = 107.34, z = -315.00}, topercent = 0},
	},
	incombatinteract = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				-- Sohm Al (Hard) – Lava Scorpion puddles (actors 2007649/2007650) → add circles via puddledata
				_SOHM_LAVA = _SOHM_LAVA or {last = 0}
				local now = (Now and Now()) or ((os and os.clock) and os.clock() * 1000) or 0
				local pulse = gPulseTime or 150
				if ((TimeSince and TimeSince(_SOHM_LAVA.last or 0)) or (now - (_SOHM_LAVA.last or 0))) < pulse then
					return
				end
				_SOHM_LAVA.last = now

				if not Player or not Player.incombat then
					return
				end
				local boss = Player:GetTarget()
				if not (boss and boss.contentid == 5531) then
					return
				end -- Lava Scorpion

				KitanoiFuncs.puddledata = KitanoiFuncs.puddledata or {}

				local PUD_R = {[2007649] = 4.5, [2007650] = 8} -- small / big puddles (your findings)
				local TTL = 22000 -- refresh while the actor exists

				-- scan both puddle contentids
				for cid, rad in pairs(PUD_R) do
					local list = MEntityList and MEntityList("contentid=" .. cid .. ",alive,maxdistance=100") or {}
					for id, e in pairs(list) do
						if e and e.pos then
							local key = "lava_pud_" .. tostring(id)
							local entry = KitanoiFuncs.puddledata[key]
							if entry then
								entry.pos = e.pos
								entry.radius = rad
								entry.duration = Now() + TTL
							else
								KitanoiFuncs.puddledata[key] = {
									entity = e,
									pos = e.pos,
									radius = rad,
									duration = Now() + TTL,
									name = "Lava puddle " .. tostring(cid)
								}
							end
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {7242},
	staybehindentity = {
		5529, -- The Leightonward
		--5531, -- Lava Scorpion
	},
	puddledata = {},
}

return tbl