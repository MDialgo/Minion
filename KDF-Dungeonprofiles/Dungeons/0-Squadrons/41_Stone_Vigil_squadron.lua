local tbl = {
	name = "[Sq] The Stone Vigil",
	mesh = "[Dungeon] Stone Vigil",
	dutyid = 1042,
	type = "squadron",
	level = 41,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 4,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0.5799999833107, y = 0.090000003576279, z = 112.30999755859}},
		[2] = {objective = 2, pos = {x = 49.5, y = 4, z = -79.790000915527}},
		[3] = {objective = 3, pos = {x = 0, y = 0.0099999997764826, z = -265.70001220703}},
	},
	interactdistance = 60,
	interacts = {
		[1] = {contentid = 182, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 179, priority = 2, type = "Loot 1"}, -- Ishgardian Steel Ingot
		[3] = {contentid = 180, priority = 3, type = "Loot 2"},
		[4] = {contentid = 183, priority = 4, type = "Boss 2 Loot 1"},
		[5] = {contentid = 184, priority = 5, type = "Boss 2 Loot 2"},
		[6] = {contentid = 181, priority = 6, type = "Loot 3"},
		[7] = {contentid = 2001880, priority = 7, req = {complete = false, objective = 3}, type = "Strongroom Gate"},
		[8] = {contentid = 185, priority = 8, type = "Boss 3 Loot"}, -- Cold Salvation Orchestrion Roll & Ishgardian Steel Ingot
	},
	bossids = {
		1677, -- Chudo-Yudo
		1678, -- Koshchei
		1680, -- Isgebind -- Blue Dragon Card
	},
	forcemeleerange = {1677},
	enemytargetdistance = 20,
	prioritytarget = {},
	avoidentity = {
		[2] = {contentid = 1678, radius = 6},
	},
	tankat = {
		[1] = {contentid = 1677, desc = "tank first boss away from party from 100-95%", frompercent = 100, pos = {x = 0.05, y = 0.01, z = 107.83}, topercent = 95},
	},
	faceenemyaway = {1680,1677},
	advancedavoid = {
	--	[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode =
		--[[
				function customfunction()
					KitanoiFuncs.LoadMesh("[Dungeon] Stone Vigil")
				end
			]]
	--	},
		[2] = {type = "custom", customdetails = "function", functionname = "Maelstroms Evade", functioncode = [[
				function customfunction()
					local maelstroms = MEntityList("contentid=9910,maxdistance=30")
					if (maelstroms and KitanoiFuncs.HowManyAOES() == 0) then
						for i, e in pairs(maelstroms) do
							if (e ~= nil and Argus.isEntityVisible(e.id)) then
								KitanoiFuncs.CurrentAOEs[e.id .. 0 .. e.id] = {
									type = "rectangle",
									entity = e.id,
									target = 0,
									aoeID = e.id,
									name = "maelstroms",
									poly = KitanoiFuncs.SquarePolygonflange(e.pos, 5, 10, e.pos.h, 1, 2),
									pos = e.pos,
									length = 10,
									width = 6,
									heading = e.pos.h,
									casttime = 500,
									channelingtime = 0,
									deletetime = Now() + 500
								}
							end
						end
					end
				end
			]]
		},
	},
	reactions = {
		[1] = {
			cause = "return Player.role == 1 and KitanoiFuncs.ScanForCaster2(902)",
			effect = "KitanoiFuncs.ForceTankCoolDowns()",
			name = "Lion's Breath CD",
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	tankbuster = {902,1022},
	limitbreak = {
		[1] = {contentid = 1678, percent = 95, level = 1, type = "squadron"},
		[2] = {contentid = 1680, percent = 95, level = 2, type = "squadron"},
		[3] = {contentid = 1680, percent = 95, level = 1, type = "squadron"},
	},
	staybehindentity = {1680,1677},
	puddledata = {},
}

return tbl