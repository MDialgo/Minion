local tbl = {
	name = "The Ghimlyt Dark",
	mesh = "[Dungeon] The Ghimlyt Dark",
	dutyid = 1174,
	level = 70,
	expansion = 4,
	creator = "Rinn/Void Vessel",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -180.57, y = 60, z = 68.52}},
		[2] = {objective = 2, pos = {x = -180.57, y = 60, z = 68.52}},
		[3] = {objective = 3, pos = {x = 133.99, y = 30, z = -35.02}},
		[4] = {objective = 4, pos = {x = 133.99, y = 30, z = -35.02}},
		[5] = {objective = 5, pos = {x = 370.95, y = -14.99, z = -280.79}},
		[6] = {objective = 6, pos = {x = 370.95, y = -14.99, z = -280.79}},
	},
	interacts = {
		[1] = {contentid = 1105, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 1101, priority = 2, type = "Loot 1"},
		[3] = {contentid = 1102, priority = 3, type = "Loot 2"},
		[4] = {contentid = 1106, priority = 4, type = "Boss 2 Loot"},
		[5] = {contentid = 1103, priority = 5, type = "Loot 3"},
		[6] = {contentid = 1104, priority = 6, type = "Loot 4"},
		[7] = {contentid = 1107, priority = 7, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		7855, -- Mark III-B Magitek Colossus
		7856, -- Prometheus
		7857, -- Julia quo Soranus
		7858, -- Annia quo Soranus
	},
	enemytargetdistance = 30,
	prioritytarget = {},
	tankat= {
	},
	advancedavoid = {
	--[[
		[1] = {
			castingid = 12609,
			type = "multifixed",
			pos = {
				[1] = {x = -289.20245361328, y = 10, z = -385.86770629883},
				[2] = {x = -289.20245361328, y = 10, z = -385.86770629883},
				[3] = {x = -289.20245361328, y = 10, z = -385.86770629883},
				[4] = {x = -289.20245361328, y = 10, z = -385.86770629883},
			},
		},
		--]]
		[2] = {
			castingid = 13399,  -- Tunnel --not working instant cast i think
			type = "multifixed",
			pos = {
				[1] = {x = -132.15, y = 30.00, z = -16.26},
				[2] = {x = -132.15, y = 30.00, z = -16.26},
				[3] = {x = -132.15, y = 30.00, z = -16.26},
				[4] = {x = -132.15, y = 30.00, z = -16.26},
			},
		},
		[3] = {
			castingid = 13400,  -- Heat --not working instant cast i think
			type = "multifixed",
			pos = {
				[1] = {x = -132.15, y = 30.00, z = -16.26},
				[2] = {x = -132.15, y = 30.00, z = -16.26},
				[3] = {x = -132.15, y = 30.00, z = -16.26},
				[4] = {x = -132.15, y = 30.00, z = -16.26},
			},
		},
		[4] = {
			castingid = 14671,  -- Magitek Slash --
			type = "movebehind",
		},
		[5] = {
			castingid = 14670,  -- Magitek Slash --
			type = "movebehind",
		},
		[6] = {
			castingid = 14196,  -- Magitek Slash --
			type = "movebehind",
		},
		[7] = {
			castingid = 14197,  -- Magitek Slash --
			type = "movebehind",
		},
	},
	overheadmarkers = {
		[1] = {id = 62, contentid = "7855", desc= "stack",  type = "move", detectwho = "any",
			pos =  {
				[1] = {x = -180.34, y = 60.00, z = 67.52},
				[2] = {x = -180.34, y = 60.00, z = 67.52},
				[3] = {x = -180.34, y = 60.00, z = 67.52},
				[4] = {x = -180.34, y = 60.00, z = 67.52}
			},
			timetoreturn = 5
		},
		[2] = {id = 168, contentid = "7855", desc= "spread", type = "move", detectwho = "me",
			pos =  {
				[1] = {x = -189.12, y = 60.00, z = 78.67},
				[2] = {x = -172.68, y = 60.00, z = -81.84},
				[3] = {x = -166.55, y = 60.00, z = 66.34},
				[4] = {x = -190, y = 60.00, z = 58.56}
			},
			returnpos = {
				[1] = {x = -180.34, y = 60.00, z = 67.52},
				[2] = {x = -180.34, y = 60.00, z = 67.52},
				[3] = {x = -180.34, y = 60.00, z = 67.52},
				[4] = {x = -180.34, y = 60.00, z = 67.52}
			},
			timetoreturn = 10
		},
	},
}

return tbl