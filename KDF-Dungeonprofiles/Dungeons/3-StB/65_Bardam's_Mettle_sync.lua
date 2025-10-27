local tbl = {
	name = "Bardam's Mettle",
	mesh = "[Dungeon] Bardam's Mettle",
	dutyid = 1143,
	level = 65,
	expansion = 4,
	creator = "Rinn4747",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=3.96, y= -0.5, z= 251.17}},
		[2] = {objective = 2, pos = {x=3.96, y= -0.5, z= 251.17}},
		[3] = {objective = 3, pos = {x=-30.27, y= -45, z= -30.61}},
		[4] = {objective = 4, pos = {x=-28.55, y= -45, z= -13.53}},
		[5] = {objective = 5, pos = {x=23.94, y= -167.5, z= -483.54}},
		[6] = {objective = 6, pos = {x=23.94, y= -167.5, z= -483.54}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 905, priority = 1,  type = "Boss 1 Loot"},
		[2] = {contentid = 901, priority = 2,  type = "Loot 1"},
		[3] = {contentid = 902, priority = 3,  type = "Loot 2"},
		[4] = {contentid = 906, priority = 5,  type = "Boss 2 Loot"},
		[5] = {contentid = 903, priority = 4,  type = "Loot 3"},
		[6] = {contentid = 904, priority = 5,  type = "Loot 4"},
		[7] = {contentid = 907, priority = 5,  type = "Boss 3 Loot"}, -- Minion & Orchestrion
	},
	bossids = {
		6173, -- Garula
		6177, -- Bardam
		6180, -- Hunter of Bardam
		6155, -- Yol
	},
	forcemeleerange= {},
	enemytargetdistance = 50,
	prioritytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 6173, priority = 1, type = "Garula"},
	},
	ignoretarget = {},
	avoidentity= {
		[1] = {contentid= 6193, radius = 10},
	},
	advancedavoid = {
		[1] = {castingid = 7937, type = "multifixed",
			pos = {
				[1] = {x = -35.222366333008, y = -44.999980926514, z = -6.9168825149536},
				[2] = {x = -21.217874526978, y = -44.999984741211, z = -6.1099081039429},
				[3] = {x = -28.517625808716, y = -44.999980926514, z = -22.138269424438},
				[4] = {x = -28.517625808716, y = -44.999980926514, z = -22.138269424438}
			}
		},
		[2] = {castingid = 9591, type = "movebehind"},
		[3] = {args = {dist = 2, entityone = 6692, entitytwo = 6663}, castingid = 9602, desc = "Meteor Impact", type = "los"},
		--[3] = {type = "custom", customdetails = "libraryfunction", functioncode = "RinnLib.runBardamsMettle()"},
	},
	overheadmarkers = {
		[1] = {
			id = 58,
			contentid = "6177",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352},
				[2] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352},
				[3] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352},
				[4] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352}
			}, --all move to same point to stack
			timetoreturn = 5
		},
		[2] = {
			id = 58,
			contentid = "6180",
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352},
				[2] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352},
				[3] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352},
				[4] = {x = -28.289047241211, y = -44.999984741211, z = -13.029049873352}
			}, --all move to same point to stack
			timetoreturn = 5
		},
		[3] = {
			id = 23,
			contentid = "6155",
			desc= "spread",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = 28.780055999756, y = -167.50094604492, z = -476.04748535156},
				[2] = {x = 18.85057258606,y = -167.60093688965, z = -475.75897216797},
				[3] = {x = 24.170713424683, y = -167.60093688965,	z = -470.33639526367},
				[4] = {x = 23.989608764648, y = -167.60093688965, z = -480.05218505859 }
			},
			timetoreturn = 5
		},
		[4] = {
			id = 16,
			contentid = "6155",
			desc= "spread",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = 28.780055999756, y = -167.50094604492, z = -476.04748535156},
				[2] = {x = 18.85057258606,y = -167.60093688965, z = -475.75897216797},
				[3] = {x = 24.170713424683, y = -167.60093688965,	z = -470.33639526367},
				[4] = {x = 23.989608764648, y = -167.60093688965, z = -480.05218505859 }
			},
			timetoreturn = 5
		},
	},
	tethers = {
		[1] = {id = 57, type = "avoid", radius = 20, who = "entityone", duration = 6, desc = "First Boss Rush"},
		[2] = {id = 57, type = "avoid", radius = 20, who = "entitytwo", duration = 6, desc = "First Boss Rush"},
	},
	excludeavoid = {9602,9591},
}

return tbl