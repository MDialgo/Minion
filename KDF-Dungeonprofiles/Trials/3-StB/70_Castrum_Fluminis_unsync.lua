local tbl = {
	name = "Castrum Fluminis",
	dutyid = 778,
	level = 70,
	expansion = 4,
	creator = "Mist",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= 100.02 ,y= 0.20,z=  99.74} },
	},
	interacts = {},
	forcemeleerange = {7225},
	prioritytarget = {
		[1]={priority=1,contentid=7230}, -- Midnight Haze
		[2]={priority=2,contentid=7227}, -- Specter of the Patriarch
		[3]={priority=2,contentid=7228}, -- Specter of the Matriarch
		[4]={priority=2,contentid=7233}, -- Specter of the Homeland
		[5]={priority=2,contentid=7234}, -- Specter of the Empire
		[6]={priority=2,contentid=7225}, -- Specter of Asahi
		[7]={priority=2,contentid=7476}, -- Specter of Asahi
		[8]={priority=2,contentid=7537}, -- Specter of Zenos
	},
	-- avoidentity = {
	-- [1] = {contentid=7229, radius=10, type="circle"}, -- Dancing Fan
	-- },
	tankat = {
		[1] = {contentid = 7225, frompercent = 100, topercent = 0, pos = {x= 100.02 ,y= 0.20,z=  99.74} },
	},
	advancedavoid = {
		[1] = {
			castingid = 11238, -- Lead of the Underworld
			type = "singlefixed",
			pos = { -- South far
			[1] = {x= 100.02 ,y= 0.20,z=  99.74},
			[2] = {x= 100.02 ,y= 0.20,z=  99.74},
			[3] = {x= 100.02 ,y= 0.20,z=  99.74},
			[4] = {x= 100.02 ,y= 0.20,z=  99.74},
			[5] = {x= 100.02 ,y= 0.20,z=  99.74},
			[6] = {x= 100.02 ,y= 0.20,z=  99.74},
			[7] = {x= 100.02 ,y= 0.20,z=  99.74},
			[8] = {x= 100.02 ,y= 0.20,z=  99.74},
			},
		},
		[2] = {
			castingid = 11259, -- Lunacy
			type = "singlefixed",
			pos = { -- South far
			[1] = {x= 100.02 ,y= 0.20,z=  99.74},
			[2] = {x= 100.02 ,y= 0.20,z=  99.74},
			[3] = {x= 100.02 ,y= 0.20,z=  99.74},
			[4] = {x= 100.02 ,y= 0.20,z=  99.74},
			[5] = {x= 100.02 ,y= 0.20,z=  99.74},
			[6] = {x= 100.02 ,y= 0.20,z=  99.74},
			[7] = {x= 100.02 ,y= 0.20,z=  99.74},
			[8] = {x= 100.02 ,y= 0.20,z=  99.74},
			},
		},
	[3] = {
			castingid = 11249, -- Selenomancy
			type = "singlefixed",
			pos = { -- Center
			[1] = {x= 100.02 ,y= 0.20,z=  99.74},
			[2] = {x= 100.02 ,y= 0.20,z=  99.74},
			[3] = {x= 100.02 ,y= 0.20,z=  99.74},
			[4] = {x= 100.02 ,y= 0.20,z=  99.74},
			[5] = {x= 100.02 ,y= 0.20,z=  99.74},
			[6] = {x= 100.02 ,y= 0.20,z=  99.74},
			[7] = {x= 100.02 ,y= 0.20,z=  99.74},
			[8] = {x= 100.02 ,y= 0.20,z=  99.74},
			},
		},
	[4] = {
		castingid = 11379, -- Lunar Halo
		type = "movetoentity",
		entitylist = "contentid=7231,maxdistance10",
		targetable = false
	},
	-- [5] = {
		-- 	castingid = 11235, -- Torment Unto Death
		-- 	type = "setdistance",
		-- 	dist = 5
	-- },
	-- [6] = {
			-- 	castingid = 11244, -- Zashiki-asobi (fans start)
			-- 	type = "singlefixed",
			--  pos = { -- Center
			--   	[1] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [2] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [3] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [4] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [5] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [6] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [7] = {x= 100.02 ,y= 0.20,z=  99.74},
			-- [8] = {x= 100.02 ,y= 0.20,z=  99.74},
			--   },
		-- },
	}, -- advancedavoid
	hasbuff = {
	[1] = {
			buffid = 1538, -- Moonlit
			type = "move",
			stacksrequired = 2,
			pos = { -- East close
			[1] = {x= 103.07 ,y= 0.20,z= 100.17},
			[2] = {x= 103.07 ,y= 0.20,z= 100.17},
			[3] = {x= 103.07 ,y= 0.20,z= 100.17},
			[4] = {x= 103.07 ,y= 0.20,z= 100.17},
			[5] = {x= 103.07 ,y= 0.20,z= 100.17},
			[6] = {x= 103.07 ,y= 0.20,z= 100.17},
			[7] = {x= 103.07 ,y= 0.20,z= 100.17},
			[8] = {x= 103.07 ,y= 0.20,z= 100.17},
			},
		},
	[2] = {
			buffid = 1539, -- Moonshadowed
			type = "move",
			stacksrequired = 2,
			pos = { -- West close
			[1] = {x=  96.42 ,y= 0.20,z= 100.04},
			[2] = {x=  96.42 ,y= 0.20,z= 100.04},
			[3] = {x=  96.42 ,y= 0.20,z= 100.04},
			[4] = {x=  96.42 ,y= 0.20,z= 100.04},
			[5] = {x=  96.42 ,y= 0.20,z= 100.04},
			[6] = {x=  96.42 ,y= 0.20,z= 100.04},
			[7] = {x=  96.42 ,y= 0.20,z= 100.04},
			[8] = {x=  96.42 ,y= 0.20,z= 100.04},
			},
		},
	},
	excludeavoid = {
		11238, -- Lead of the Underworld (stack)
		11259, -- Lunacy (stack)
		11379, -- Lunar Halo (orb - donut aoe)
		-- 11245, -- Tsuki-no-Maiogi (fans)
	},
	-- puddledata = {
		-- [1] = {castid=11245, radius=10, duration=7, type="ground"},
	-- },
}

return tbl
  -- {x= 100.02 ,y= 0.20,z=  99.74} -- Center
  -- {x=  99.88 ,y= 0.20,z=  90.89} -- N
  -- {x=  98.87 ,y= 0.20,z=  96.90} -- N close
  -- {x= 106.86 ,y= 0.20,z=  92.97} -- NE
  -- {x= 109.30 ,y= 0.20,z=  99.88} -- E
  -- {x= 103.07 ,y= 0.20,z= 100.17} -- E close
  -- {x= 106.60 ,y= 0.20,z=  92.76} -- E orb
  -- {x= 107.12 ,y= 0.20,z= 107.07} -- SE
  -- {x= 100.05 ,y= 0.20,z= 109.55} -- S
  -- {x= 100.11 ,y= 0.20,z= 113.22} -- S far
  -- {x=  92.91 ,y= 0.20,z= 107.25} -- SW
  -- {x=  90.74 ,y= 0.20,z=  99.93} -- W
  -- {x=  96.42 ,y= 0.20,z= 100.04} -- W close
  -- {x=  92.84 ,y= 0.20,z= 107.12} -- W orb
  -- {x=  92.92 ,y= 0.20,z=  92.90} -- NW