local tbl = {
	name = "Leviathan Ex",
	mesh = "The Whorleater",
	dutyid = 359,
	level = 50,
	expansion = 2,
	creator = "moe",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 309, priority = 1, type = "Loot"},
		-- Wave Weapons, Leviathan's Barb, Barb of the Whorl, Mirror of the Whorl, Enbarr Whistle, Faded Copy of Wreck to the Seaman & Faded Copy of Through the Maelstrom
	},
	bossids = {
		2550, -- Leviathan -- Leviathan Card
		2551, -- Leviathan's Tail
	},
	forcemeleerange = {},
	enemytargetdistance = 50,
	prioritytargetdistance = 30,
	prioritytarget = {
		[1] = {contentid = 2552, priority = 1, type = "Wavetooth Sahagin"},
		[2] = {contentid = 2554, priority = 2, type = "Gyre Spume"},
		[3] = {contentid = 2553, priority = 3, type = "Wavespine Sahagin"},
		[4] = {contentid = 2550, priority = 4, type = "Head"},
		[5] = {contentid = 2551, priority = 4, type = "Tail"},
	},
	incombatinteract = {},
	advancedavoid = {
		[1] = { type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local entcast = KitanoiFuncs.ScanForCast2(2090,nil,nil,true)
					local entcast2 = KitanoiFuncs.ScanForCast2(2186,nil,nil,true)
					local bigaoe = KitanoiFuncs.ScanForCast2(2094)
					if entcast2~=false then
						for _, v in pairs(entcast2) do
							if  v.pos.x < 0 then
								Player:MoveTo(1,Player.pos.y,Player.pos.z)
								KitanoiSettings.avoidingtime = Now()+2000
							else
								Player:MoveTo(-1,Player.pos.y,Player.pos.z)
								KitanoiSettings.avoidingtime = Now()+2000
							end
						end
					end
					if bigaoe then
						Player:MoveTo(0.34747117757797,1.192,0.36975833773613)
					end
					if entcast~=false then
						for _, v in pairs(entcast) do
							if  v.pos.z < 0 then
								Player:MoveTo(Player.pos.x,0.0056957006454468,16.68300819397)
								KitanoiSettings.avoidingtime = Now()+2000
							else
								Player:MoveTo(Player.pos.x,0.0056957006454468,-17.47519493103)
								KitanoiSettings.avoidingtime = Now()+2000
							end
						end
					end
				end
			]],
		}
	},
	reactions = {},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl