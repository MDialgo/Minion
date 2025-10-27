local tbl = {
	name = "E5N Eden's Verse: Fulmination",
	mesh = "[KDF] - The Gandof Thunder Plains",
	dutyid = 902,
	level = 80,
	expansion = 5,
	creator = "Koyote#6642",
	notes = "",
	hacks = false,
	queuetype = 1,
	requeuetimer = 10,
	objectivedestinations = {
		{objective = 1, pos = {x = 100, y = -9.999999960042e-13, z = 90} },
	},
	forcemeleerange = {},
	interactdistance = 20,
	interacts = {},
	enemytargetdistance = 30,
	bossids = {9281},
	prioritytargetdistance = 10,
	prioritytarget = {
		{contentid = 9281, priority = 1, type = "Ramuh"},
	},
	tankat= {
		[1] = {contentid = 9281, frompercent = 100, topercent = 0, pos = {x= 108.09, y= 0, z= 98.38}, desc = "Tank at this pos from 100-1%"},
	},
	advancedavoid = {
		{
			castingid = 19355,
			creatordesc = "Stormclouds Summons",
			desc = "Description",
			pos = {
				{
					x = 81,
					y = 0,
					z = 112,
				},
			},
			type = "singlefixed",
		},
		{
			castingid = 19344,
			creatordesc = "Fury's Bolt",
			desc = "Description",
			pos = {
				{
					x = 108.09,
					y = 0,
					z = 98.38,
				},
			},
			type = "singlefixed",
		},
		{
			castingid = 19346,
			creatordesc = "Deadly Discharge",
			desc = "Description",
			pos = {
				{
					x = 108.09,
					y = 0,
					z = 98.38,
				},
			},
			type = "singlefixed",
		},
		{
			castingid = 19347,
			creatordesc = "Deadly Discharge",
			desc = "Description",
			pos = {
				{
					x = 108.09,
					y = 0,
					z = 98.38,
				},
			},
			type = "singlefixed",
		},
		{
			castingid = 19348,
			creatordesc = "Deadly Discharge",
			desc = "Description",
			pos = {
				{
					x = 108.09,
					y = 0,
					z = 98.38,
				},
			},
			type = "singlefixed",
		},
		{
			castingid = 19349,
			creatordesc = "Deadly Discharge",
			desc = "Description",
			pos = {
				{
					x = 108.09,
					y = 0,
					z = 98.38,
				},
			},
			type = "singlefixed",
		},
	},
	hasbuff = {},
	overheadmarkers = {
		{
			contentid = 110,
			desc = "Marker",
			detectwho = "me",
			id = 1,
			pos = {
				{
					x = 118.59392547607,
					y = 0,
					z = 113.51873016357,
				},
			},
			timetoreturn = 10,
			type = "move",
		},
	},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl