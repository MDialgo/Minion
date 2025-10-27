local tbl = {
	name = "Shisui of the Violet Tides",
	mesh = "[HM] - Shisui of the Violet Tides",
	dutyid = 616,
	level = 63,
	expansion = 4,
	creator = "Rinn",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -0.73, y = 46.2, z = -450.12}},
		[2] = {objective = 2, pos = {x = -0.73, y = 46.2, z = -450.12}},
		[3] = {objective = 3, pos = {x = -0.71, y = 27.25, z = -219.55}},
		[4] = {objective = 4, pos = {x = -0.71, y = 27.25, z = -219.55}},
		[5] = {objective = 5, pos = {x = -0.73, y = 46.2, z = -450.12}},
		[6] = {objective = 6, pos = {x = -0.73, y = 46.2, z = -450.12}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 897, priority = 1, type = "Boss 1 Loot"},
		[2] = {contentid = 893, priority = 1, type = "Loot 1"},
		[3] = {contentid = 894, priority = 1, type = "Loot 2"},
		[4] = {contentid = 898, priority = 1, type = "Boss 2 Loot"},
		[5] = {contentid = 895, priority = 1, type = "Loot 3"},
		[6] = {contentid = 896, priority = 1, type = "Loot 4"},
		[7] = {contentid = 899, priority = 1, type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6237, -- Amikiri
		6241, -- Ruby Princess
		6243, -- Shisui Yohi
	},
	enemytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 6238, priority = 1, type = "first boss scorpion"},
		[2] = {contentid = 6244, priority = 2, type = "last boss sharks"},
		[3] = {contentid = 6245, priority = 3, type = "last boss shark variant"},
		[4] = {contentid = 6246, priority = 4, type = "Churn Melee DPS don't move sometimes"},
		-- Churn? for melee dps
	},
	-- possible tanks spots?  {x = 1.04, y = 27.25, z = -206} // {x = -3.56, y = 27.25, z = -207.18} // {x = -4.27, y = 27.25, z = -192.51}
	-- get tanks into one of the following aoe, but dps seems to not trigger the cask
	tankat= {
		[1] = {contentid = 6241, frompercent = 99, topercent = 0, pos = {x = 1.04, y = 27.25, z = -206}, desc = "recenter boss after each seduce"},
	},
	advancedavoid = {
		[1] = {castingid = 8058, type = "multifixed",
			pos = {
				[1] = {x = -9.98, y = 27.4, z = -198.46},
				[2] = {x = -10.02, y = 27.4, z = -218.2},
				[3] = {x = 9.93, y = 27.4, z = -218.25},
				[4] = {x = 10.04, y = 27.4, z = -198.2}
			}
		},
	},
	hasbuff = {
		[1] = {type = "move", buffid = 1259,
			pos = {
				[1] = {x = -7.98, y = 27.4, z = -194.59},
				[2] = {x = -14.31, y = 27.4, z = -216.03},
				[3] = {x = 14.7, y = 27.4, z = -216.22},
				[4] = {x = 8.24, y = 27.4, z = -194.98}
			}
		},
	},
	overheadmarkers = {
	--if priority target one killed puddle doesnt appear, also avoiding sometimes happens before its death
		--[[ [1] = {
			id = 14,
			contentid = "6237",
			desc= "1st boss spread water puddles",
			type = "move",
			detectwho = "me",
			pos = {
				[1] = {x = 10.99, y = 18.5, z = 83.64},
				[2] = {x = -10.20, y = 18.5, z = 83.21},
				[3] = {x = -11.70, y = 18.5, z = 54.80},
				[4] = {x = 13.93, y = 18.5, z = 57.32}
			},
			returnpos = {
				[1] = {x = -0.93, y = 18.5, z = 76.27},
				[2] = {x = -0.93, y = 18.5, z = 76.27},
				[3] = {x = -0.93, y = 18.5, z = 76.27},
				[4] = {x = -0.93, y = 18.5, z = 76.27}
			},
			timetoreturn = 8
		}, --]]
		[1] = {
			id = 1,
			contentid = "6237",
			desc= "1st boss targeted disable",
			type = "move",
			detectwho = "me",
			pos = {
				[1] = {x = 10.99, y = 18.5, z = 83.64},
				[2] = {x = -10.20, y = 18.5, z = 83.21},
				[3] = {x = -11.70, y = 18.5, z = 54.80},
				[4] = {x = 13.93, y = 18.5, z = 57.32}
			},
			returnpos = {
				[1] = {x = -0.93, y = 18.5, z = 76.27},
				[2] = {x = -0.93, y = 18.5, z = 76.27},
				[3] = {x = -0.93, y = 18.5, z = 76.27},
				[4] = {x = -0.93, y = 18.5, z = 76.27}
			},
			timetoreturn = 8
		},
		[2] = {id = 1,
			contentid = "6241",
			desc= "2nd boss following aoe",
			type = "move",
			detectwho = "me",
			pos = {
				[1] = {x = -7.98, y = 27.4, z = -194.59},
				[2] = {x = -14.31, y = 27.4, z = -216.03},
				[3] = {x = 14.7, y = 27.4, z = -216.22},
				[4] = {x = 8.24, y = 27.4, z = -194.98}
			},
			returnpos = {
				[1] = {x = 3.84, y = 27.25, z = -226.91},
				[2] = {x = 17.89, y = 27.25, z = -201.54},
				[3] = {x = -4.62, y = 27.25, z = -190.24},
				[4] = {x = -17.89, y = 27.25, z = -212.24}
			},
			timetoreturn = 4
		},
},
	excludeavoid = {8070,8069}, --Melee DPS seems stuck in place due to these AOE
}

return tbl