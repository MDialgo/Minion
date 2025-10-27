local tbl = {
	name = "The Pool of Tribute",
	mesh = "[Trial] The Pool Of Tribute",
	dutyid = 674,
	level = 63,
	expansion = 4,
	creator = "Mist",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = { x = -0.76, y = -0.12, z = -12.85} },
	},
	interacts = {},
--	forcemeleerange = {6221},
	prioritytarget = {
		[1] = {priority=1, contentid=6225}, -- blade
		[2] = {priority=2, contentid=6224}, -- boulders
	},
	tankat= {
		[1] = {contentid = 6221, frompercent = 100, topercent = 0, pos = { x = -0.25, y = -0.12, z = -5.10 } }, --Middle North
	},
	incombatinteract  = {
		[1] = {interactid = 2008185, type = "interact", who = "closest" }, -- Blade's Shadow
	},
	advancedavoid = {
		[1] = {castingid = 9506, type = "multifixed", pos = {
			[1] = {x=19.47,y=-0.12,z=-0.09}, --Far E
			[2] = {x=-19.50,y=-0.12,z=-0.13}, --Far W
			[3] = {x=19.47,y=-0.12,z=-0.09}, --Far E
			[4] = {x=-19.50,y=-0.12,z=-0.13}, --Far W
			[5] = {x=19.47,y=-0.12,z=-0.09}, --Far E
			[6] = {x=-19.50,y=-0.12,z=-0.13}, --Far W
			[7] = {x=19.47,y=-0.12,z=-0.09}, --Far E
			[8] = {x=-19.50,y=-0.12,z=-0.13}, --Far W
			},
		},
	},
	overheadmarkers = {
		[1] = {id = 23, contentid = "6221", desc= "spread", type = "move", detectwho = "me", pos = {
			[1] = {x=-13.83,y=-0.12,z=-0.01}, --W
			[2] = {x=-10.56,y=-0.12,z=-6.11}, --NW
			[3] = {x=6.60,y=-0.12,z=-12.36}, --NE
			[4] = {x=13.75,y=-0.12,z=-0.10}, --E
			[5] = {x=10.96,y=-0.12,z=5.41}, --SE
			[6] = {x=0.37,y=-0.12,z=12.24}, --S
			[7] = {x=-6.75,y=-0.12,z=12.36}, --SW
			[8] = {x = -0.44, y =-0.12, z = -12.37}, --N
			},
			returnpos = { -- Middle
			[1] = {x=0.29,y=0.40,z=0.35},
			[2] = {x=0.29,y=0.40,z=0.35},
			[3] = {x=0.29,y=0.40,z=0.35},
			[4] = {x=0.29,y=0.40,z=0.35},
			[5] = {x=0.29,y=0.40,z=0.35},
			[6] = {x=0.29,y=0.40,z=0.35},
			[7] = {x=0.29,y=0.40,z=0.35},
			[8] = {x=0.29,y=0.40,z=0.35},
			},
			timetoreturn = 5
		},
		[2] = {id = 62, contentid = "6221", desc= "stack", type = "move", detectwho = "any", pos =  { -- Middle
			[1] = {x=0.29,y=0.40,z=0.35},
			[2] = {x=0.29,y=0.40,z=0.35},
			[3] = {x=0.29,y=0.40,z=0.35},
			[4] = {x=0.29,y=0.40,z=0.35},
			[5] = {x=0.29,y=0.40,z=0.35},
			[6] = {x=0.29,y=0.40,z=0.35},
			[7] = {x=0.29,y=0.40,z=0.35},
			[8] = {x=0.29,y=0.40,z=0.35},
			},
			timetoreturn = 5
		},
	}
}

return tbl