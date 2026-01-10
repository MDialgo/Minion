local tbl = {
	name = "[Sq] The Wanderer's Palace",
	mesh = "",
	dutyid = 159,
	type = "squadron",
	level = 50,
	expansion = 2,
	creator = "Mist",
	notes = "",
	queuetype = 4,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 124.99, y = -12.00, z = 98.27}}, -- Clear Still Waters (Keeper of the Halidom)
		[2] = {objective = 2, pos = {x = 118.50, y = -9.80, z = 66.06}}, -- Unlock the sealed gate
		-- [2] "Lantern Oil" counter objective
		[4] = {objective = 4, pos = {x = 43.26, y = 0.01, z = -243.02}}, -- Climb the Endless Rise
		[5] = {objective = 5, pos = {x = 73.00, y = 6.20, z = -448.69}}, -- Clear the Final Ease (Giant Bavarois)
		[6] = {objective = 6, pos = {x = 73.00, y = 6.20, z = -448.69}} -- Defeat the Tonberry King
	},
	interactdistance = 85,
	interacts = {
		[1] = {contentid = 144, req = {}, priority = 1, type = "Loot 1"}, -- Blunt Aeolian Scimitar & Bloody Cesti Covers
		[2] = {contentid = 140, req = {objective = 1, complete = true}, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 2001123, req = {objective = 1, complete = true}, priority = 3, type = "Nymian Device"},
		[4] = {contentid = 2002789, req = {objective = 2, complete = true}, priority = 4, type = "Lantern Oil x3"},
		[5] = {contentid = 2001124, req = {objective = 2, complete = true}, priority = 5, type = "Rusted Nymian Device"},
		[6] = {contentid = 2001125, req = {objective = 2, complete = true}, priority = 6, type = "Rusted Nymian Device"},
		[7] = {contentid = 2001126, req = {objective = 2, complete = true}, priority = 7, type = "Rusted Nymian Device"},
		[8] = {contentid = 2001127, req = {objective = 2, complete = true}, priority = 8, type = "Nymian Device"},
		[9] = {contentid = 2002789, req = {objective = 2, complete = true}, priority = 9, type = "Lantern Oil x2"},
		[10] = {contentid = 2001129, req = {objective = 2, complete = true}, priority = 10, type = "Rusted Nymian Device"},
		[11] = {contentid = 2001128, req = {objective = 2, complete = true}, priority = 11, type = "Rusted Nymian Device"},
		[13] = {contentid = 145, req = {objective = 2, complete = true}, priority = 12, type = "Loot 2"}, -- Uraeus Skin, Bloody Lance Head, Bloody Bow Rim & Bloody Grimoire Binding
		[12] = {contentid = 146, req = {objective = 2, complete = true}, priority = 13, type = "Loot 3"}, -- Pinprick Pebble, Bloody Bardiche Head, Bloody Knife Blades
		[14] = {contentid = 141, req = {objective = 4, complete = true}, priority = 14, type = "Boss 2 Loot 1"},
		[15] = {contentid = 142, req = {objective = 4, complete = true}, priority = 15, type = "Boss 2 Loot 2"},
		[16] = {contentid = 147, req = {objective = 4, complete = true}, priority = 16, type = "Loot 4"}, -- Nymian Orb, Bite-sized Pudding & A Tonberry's Tears Orchestrion Roll
		[17] = {contentid = 2002789, req = {objective = 5, complete = true}, priority = 17, type = "Lantern Oil x1"},
		[18] = {contentid = 2002789, req = {objective = 5, complete = true}, priority = 18, type = "Lantern Oil x1"},
		[19] = {contentid = 2001130, req = {objective = 5, complete = true}, priority = 19, type = "Rusted Nymian Device"},
		[20] = {contentid = 2001131, req = {objective = 5, complete = true}, priority = 20, type = "Rusted Nymian Device"},
		[21] = {contentid = 139, priority = 21, type = "Boss 3 Loot"} -- N/A
	},
	bossids = {
		1548, -- Keeper of the Halidom
		1549, -- Giant Bavarois
		1547, -- Tonberry King -- Tonberry Card
	},
	prioritytarget = {
		[1] = {contentid = 1547, priority = 1, type = "Tonberry King"},
		--[2] = {contentid = 2180, priority = 2, type = "Tonberry Slasher"},
		--[3] = {contentid = 1550, priority = 3, type = "Tonberry"}
	},
	ignoretarget = {1566,1550,2180},
	avoidentity = {
		[1] = {contentid = 1556, radius = 15, type = "circle"} -- Tonberry Stalker
	},
	tankat = {
		[1] = {contentid = 1549, frompercent = 100, topercent = 0, pos = {x = 27.15, y = 0.00, z = -244.7}, desc = "tank the Bavarois here"},
		[2] = {contentid = 1547, frompercent = 100, topercent = 0, pos = {x = 73.00, y = 6.00, z = -434.4}, desc = "tank the King here"},
	},
	advancedavoid = {
	--[[	[1] = {castingid = 943, type = "multifixed",
			pos = {
				[1] = {x = 59.32, y = 0.00, z = -219.8},
				[2] = {x = 59.32, y = 0.00, z = -219.8},
				[3] = {x = 59.32, y = 0.00, z = -219.8},
				[4] = {x = 59.32, y = 0.00, z = -219.8},
			}
		},]]
	},
	overheadmarkers = {
	--[[	[1] = {
			contentid = "1549",
			desc = "escape",
			detectwho = "me",
			id = 1,
			pos = {
				[1] = {x = 59.32, y = 0.00, z = -219.8},
				[2] = {x = 59.32, y = 0.00, z = -219.8},
				[3] = {x = 59.32, y = 0.00, z = -219.8},
				[4] = {x = 59.32, y = 0.00, z = -219.8},
			},
			timetoreturn = 10,
			type = "move",
		},]]
	},
	limitbreak = {
		[1] = {contentid = 1549, percent = 95, level = 1, type = "squadron"},
		[2] = {contentid = 1547, percent = 95, level = 2, type = "squadron"},
		[3] = {contentid = 1547, percent = 95, level = 1, type = "squadron"},
	},
	staybehindentity = {1548},
}

return tbl