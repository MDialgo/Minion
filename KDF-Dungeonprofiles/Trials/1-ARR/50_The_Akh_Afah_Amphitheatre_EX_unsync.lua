local tbl = {
	name = "Shiva Ex",
	mesh = "",
	dutyid = 378,
	level = 50,
	expansion = 2,
	creator = "Wxlfee",
	notes = "Shiva Material Grind (Funny weapons).",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {},
	interacts = {
		[1] = {contentid = 366, priority = 1, type = "Loot"},
		-- True Ice Weapons, Ice Tear, Diamond Tear, Boreas Whistle, Faded Copy of Footsteps in the Snow & Faded Copy of Oblivion
	},
	bossids = {
		2994, -- Shiva -- Shiva Card & Diamond Dust
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 2995, priority = 1, type = "Ice Soldier"},
	},
	tankat = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				if HasBuff(Player.id, 604) then
					Player:Stop()
					d("Frozen Floor, not moving.")
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {3051},
}

return tbl