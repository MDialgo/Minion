local tbl = {
	name = "Amdapor Keep (Hard)",
	mesh = "[Dungeon] Amdapor Keep (Hard)",
	dutyid = 189,
	level = 50,
	expansion = 2,
	creator = "Dibbi",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -124.40679931641, y = -2.8000056743622, z = 10.849120140076}},
		[2] = {objective = 2, pos = {x = 200.19619750977, y = 44, z = -153.65539550781}},
		[3] = {objective = 3, pos = {x = 200.00169372559, y = -4.5283150029718e-06, z = 235.69050598145}},
	},
	interactdistance = 30,
	interacts = {
		[1] = {contentid = 396, priority = 1, type = "Loot 1"},
		[2] = {contentid = 397, priority = 2, type = "Loot 2"},
		[3] = {contentid = 400, priority = 3, type = "Boss 1 Loot"},
		[4] = {contentid = 398, priority = 4, type = "Loot 3"},
		[5] = {contentid = 399, priority = 5, type = "Loot 4"},
		[6] = {contentid = 401, priority = 6, type = "Boss 2 Loot 1"},
		[7] = {contentid = 402, priority = 7, type = "Boss 2 Loot 2"},
		[8] = {contentid = 2004705, priority = 8, type = "Aetherial Flow"},
		[9] = {contentid = 2004706, priority = 9, type = "Fell Orb"},
		[10] = {contentid = 2004707, priority = 10, type = "Aetherial Flow"},
		[11] = {contentid = 403, priority = 11, type = "Boss 3 Loot"}, -- N/A
	},
	bossids = {
		3272, -- Anchag
		3274, -- Boogyman
		3280, -- Ferdiad -- Demon Wall Card & Ferdiad Card
	},
	forcemeleerange = {3286},
	enemytargetdistance = 35,
	prioritytargetdistance = 35,
	prioritytarget = {
		[1] = {contentid = 3260, priority = 1, type = "Hedgerow Ochu"},
		[2] = {contentid = 3283, priority = 1, type = "Wicked jester"},
		[3] = {contentid = 3284, priority = 1, type = "Suppuration"},
		[4] = {contentid = 3286, priority = 1, type = "Troubadour"},
		[5] = {contentid = 3272, priority = 1, type = "Anchag"},
		[6] = {contentid = 3274, priority = 1, type = "Boogyman"},
	},
	avoidentity = {
		[1] = {contentid = 3281, radius = 6}, -- Boss 2 : Spinning Abyssal Scythe
	},
	tankat = {
		[1] = {contentid = 3280, frompercent = 100, topercent = 0, pos = {x = 199.16, y = -0.00, z = 240.22}, desc = "tank Ferdiad here"},
	},
	incombatinteract = {},
	advancedavoid = {
		-- Boss 2: init (state + tiny helpers)
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				_AKH = _AKH or {} -- Amdapor Keep (Hard) state

				local function GetNearestTarget(el)
					if type(el) ~= "table" or next(el) == nil then
						return nil
					end
					local best, bestd = nil, 1e18
					local me = Player and Player.pos
					for _, v in pairs(el) do
						if v and v.pos then
							local d = math.distance2d(me, v.pos)
							if d < bestd then
								best, bestd = v, d
							end
						end
					end
					return best
				end

				local function SelfHaveBuff(id)
					if TensorCore and TensorCore.hasBuff then
						return TensorCore.hasBuff(Player.id, id)
					end
					local buffs = Player and (Player.buffs or (Player.GetBuffs and Player:GetBuffs())) or {}
					for _, b in pairs(buffs) do
						local bid = b and (b.id or b.buffid or b.statusid)
						if bid == id then
							return true
						end
					end
					return false
				end

				_AKH.GetNearestTarget = GetNearestTarget
				_AKH.SelfHaveBuff = SelfHaveBuff
			]],
		},
		-- Boss 2: update “light” position (3276) whenever it exists
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				local light_el = MEntityList("contentid=3276,alive,targetable")
				if light_el then
					local tar = _AKH.GetNearestTarget(light_el)
					if tar and tar.pos then
						_AKH.Light_Pos = tar.pos
					end
				end
			]],
		},
		-- Boss 2: main logic
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				local el = MEntityList("contentid=3274;3275")
				if not el then
					return
				end

				local un_tar_el = MEntityList("contentid=3274;3275,targetable")
				local light_el = MEntityList("contentid=3276,alive,targetable")

				if not un_tar_el then
					-- boss(es) not targetable
					if not light_el and not _AKH.SelfHaveBuff(617) then
						-- no light present & you don't have the light buff -> go to last known light pos
						local pos = _AKH.Light_Pos
						if pos then
							(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo or Player.MoveTo)(
								pos.x,
								pos.y,
								pos.z
							)
							KitanoiSettings.avoidingtime = Now()
						end
					elseif not light_el and _AKH.SelfHaveBuff(617) then
						-- no light present & you DO have the light buff -> move to boss
						local tar = _AKH.GetNearestTarget(el)
						if tar and tar.pos then
							(KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo or Player.MoveTo)(
								tar.pos.x,
								tar.pos.y,
								tar.pos.z
							)
							KitanoiSettings.avoidingtime = Now()
						end
					end
				end
			]],
		},
		[4] = {
			castingid = 3183,  -- Wild Card
			type = "multifixed",
			pos = {
				[1] = {x = 200.30, y = -0.00, z = 216.50},
				[2] = {x = 188.95, y = -0.00, z = 240.64},
				[3] = {x = 200.30, y = -0.00, z = 216.50},
				[4] = {x = 211.71, y = -0.00, z = 240.16},
			},
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 15,
			contentid = "3272", -- Anchag
			desc= "Behind statue",
			type = "move",
			detectwho = "me",
			pos =  {
				[1] = {x = -38.85, y = -51.00, z = 17.05}, -- TO DO
				[2] = {x = -38.85, y = -51.00, z = 17.05}, -- TO DO
				[3] = {x = -38.85, y = -51.00, z = 17.05}, -- TO DO
				[4] = {x = -38.85, y = -51.00, z = 17.05}, -- TO DO
			},
			timetoreturn = 8
		},
	},
	excludeavoid = {},
	staybehindentity = {3272},
	pullenemyoutofpuddle = false,
	--[[overrideaoedetails = {
		length = {
			[3183] = 8,
		},
	}]]
}

return tbl