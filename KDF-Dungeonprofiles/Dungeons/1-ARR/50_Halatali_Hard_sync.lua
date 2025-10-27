local tbl = {
	name = "Halatali (Hard)",
	mesh = "[PS] Halatali (Hard)",
	dutyid = 360,
	level = 50,
	expansion = 2,
	creator = "Prostar",
	notes = "",
	queuetype = 1,
	FFA = false,
	hacks = false,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -25.407360076904, y = -11.030389785767, z = -132.19215393066}},
		[2] = {objective = 2, pos = {x = -68.870002746582, y = -10.180000305176, z = -94.889999389648}},
		[3] = {objective = 3, pos = {x = 66.442237854004, y = -3.5643439292908, z = 171.02412414551}},
		[4] = {objective = 4, pos = {x = 154.03189086914, y = 4.5095434188843, z = 227.4549407959}},
		[5] = {objective = 5, pos = {x = -134.95263671875, y = 10.187152862549, z = 1.4549462795258}},
		[6] = {objective = 6, pos = {x = -261.11999511719, y = 17.620000839233, z = 33.069999694824}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 283, priority = 1, type = "Loot 1"},
		[2] = {contentid = 287, priority = 2, type = "Boss 1 Loot"},
		[3] = {contentid = 284, priority = 3, type = "Loot 2"},
		[4] = {contentid = 285, priority = 4, type = "Loot 3"},
		[5] = {contentid = 288, priority = 5, type = "Boss 2 Loot"},
		--[6] = {contentid = 286, priority = 6, type = "Loot 4"}, -- Too out of the way
		[7] = {contentid = 290, priority = 7, type = "Boss 3 Loot"}, -- Beneath Bloodied Banners Orchestrion Roll
	},
	bossids = {
		2597, -- Pyracmon
		2598, -- Catoblepas
		2604, -- Franz the Fair
		2605, -- Langloisiert the Lionheart
		2606, -- U'linbho the Sand Devil
		2607, -- Silent Moss the Solemn
		2602, -- Mumuepo the Beholden
		2603, -- Narasimha
	},
	forcemeleerange = {},
	enemytargetdistance = 45,
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {contentid = 2591, priority = 1, type = "Mammet Heckler #022H"},
		[2] = {contentid = 2589, priority = 1, type = "Mammet Supporter #022S"},
		[3] = {contentid = 2589, priority = 1, type = "Mammet Supporter #022S"},
	},
	incombatinteract = {
		[1] = { -- Thal's sceptre
			interactid = 2002870,
			type = "interact",
			who = "any",
		},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Custom NPC Nav", functioncode = [[
				function customfunction()
					if (math.distance3d(Player.pos, {x = 135.75, y = -1.60, z = -5.09}) <= 30) then
						d("custom code nav")
						d(math.distance3d(Player.pos, {x = 135.75, y = -1.60, z = -5.09}))
						Player:MoveTo(66.442, -3.564, 171.024)
					end
					function checkdoor(ax, ay, az, bx, by, bz)
						local _cresult = Raycast2(ax, ay, az, bx, by, bz)
						return _cresult
					end
					local hhel = EntityList("contentid=1008027,nearest,targetable")
					if (table.valid(hhel)) then
						local hhnel = next(hhel)
						local hhtpos = hhel[hhnel].pos
						if (math.distance3d(Player.pos, hhtpos) <= 6.5) then
							d("close to npc")
							if (checkdoor(-39.86, -0.91, -122.04, -47.63, -0.91, -115.74) == true) then
								d("custom code interact")
								Player:Stop()
								Player:Interact(hhnel)
							else
								d("door is open")
							end
						end
					end
					hhel = EntityList("contentid=1008028,nearest,targetable")
					if (table.valid(hhel)) then
						local hhnel = next(hhel)
						local hhtpos = hhel[hhnel].pos
						if (math.distance3d(Player.pos, hhtpos) <= 6.5) then
							d("close to npc")
							if (checkdoor(97.72, 9.87, 200.28, 106.88, 9.87, 204.29) == true) then
								d("custom code interact")
								Player:Stop()
								Player:Interact(hhnel)
							else
								d("door is open")
							end
						end
					end
					hhel = EntityList("contentid=1008029,nearest,targetable")
					if (table.valid(hhel)) then
						local hhnel = next(hhel)
						local hhtpos = hhel[hhnel].pos
						if (math.distance3d(Player.pos, hhtpos) <= 6.5) then
							d("close to npc")
							if (checkdoor(-194.34, 21.48, 15.88, -204.33, 21.48, 16.35) == true) then
								d("custom code interact")
								Player:Stop()
								Player:Interact(hhnel)
							else
								d("door is open")
							end
						end
					end
					if (math.distance3d(Player.pos, {x = -84.01, y = -1.51, z = -76.43}) <= 2) then
						d("custom code interact")
						local hhnpcel = EntityList("contentid=1008025, targetable")
						if (table.valid(hhnpcel)) then
							local hhnpcnel = next(hhnpcel)
							Player:Interact(hhnpcnel)
						end
					end
					if (math.distance3d(Player.pos, {x = 180.56, y = 8.77, z = 241.59}) <= 2) then
						d("custom code interact")
						local hhnpcel = EntityList("contentid=1008026, targetable")
						if (table.valid(hhnpcel)) then
							local hhnpcnel = next(hhnpcel)
							Player:Interact(hhnpcnel)
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl