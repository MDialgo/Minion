local tbl = {
	name = "[Sq] The Thousand Maws of Toto-Rak",
	mesh = "[HM] - The Thousand Maws of Toto-Rak v2",
	dutyid = 1039,
	type = "squadron",
	level = 24,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	queuetype = 4,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -105, y = -4, z = 112}},
		[2] = {objective = 2, pos = {x = -105, y = -4, z = 112}},
		[3] = {objective = 3, pos = {x = -90, y = -8, z = -50}},
		[4] = {objective = 4, pos = {x = -90, y = -8, z = -50}},
		[5] = {objective = 5, pos = {x = 232, y = -39, z = -144}},
		[6] = {objective = 6, pos = {x = 232, y = -39, z = -144}},
	},
	interacts = {
		[1] = {contentid = 21, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 22, priority = 2, type = "Loot 1"}, -- Dungeon Seedling
		[3] = {contentid = 19, priority = 3, type = "Loot 2"},
		[5] = {contentid = 29, priority = 4, type = "Loot 3"},
		[4] = {contentid = 23, priority = 5, type = "Boss 2 Loot"},
		[6] = {contentid = 25, priority = 6, type = "Loot 4"},
		[7] = {contentid = 27, priority = 7, type = "Boss 3 Loot"}, -- A Thousand Screams Orchestrion Roll
	},
	bossids = {
		442, -- Coeurl O' Nine Tails x2
		444, -- Graffias
	},
	forcemeleerange = {444},
	prioritytargetdistance = 20,
	prioritytarget = {
		[1] = {contentid = 441, priority = 1, type = "Warden's Whip"},
		[2] = {contentid = 443, priority = 1, type = "Comesmite"},
		[3] = {contentid = 440, priority = 2, type = "Graffias's Tail"},
	},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Anti-Pollen Nav", functioncode = [[
				function customfunction()
					if not totorakcounter then
						totorakcounter = 1
					end
					if not timerlastbosstotorak then
						timerlastbosstotorak = Now()
					end
					totoraksafepos = {
						[1] = {x = 214.71, y = -38.9, z = -157.51},
						[2] = {x = 229.77, y = -38.9, z = -157.29},
						[3] = {x = 229.66, y = -38.9, z = -131.32},
						[4] = {x = 214.27, y = -38.9, z = -131.15}
					}
					if HasBuff(Player.id, 19) then
						d("Pollen Detected trying to move out of it")
						for a, b in pairs(totoraksafepos) do
							if a == totorakcounter then
								d("pos x = " .. b.x .. "pos y = " .. b.y .. "pos z = " .. b.z)
								timerlastbosstotorak = Now()
								if (TimeSince(KitanoiSettings.DFTimer) > 3000 or KitanoiSettings.DFTimer == 0) then
									KitanoiNavigation.NavAPI.MoveTo(b.x, b.y, b.z)
									KitanoiSettings.avoidingtime = Now()
									KitanoiSettings.DFTimer = Now()
								end
							end
						end
						totorakcounter = totorakcounter + 1
						if totorakcounter > #totoraksafepos then
							totorakcounter = 1
						end
					end
				end
			]]
		},
	},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {},
	limitbreak = {
		[1] = {contentid = 444, percent = 95, level = 2, type = "squadron"},
		[2] = {contentid = 444, percent = 95, level = 1, type = "squadron"},
	},
}

return tbl