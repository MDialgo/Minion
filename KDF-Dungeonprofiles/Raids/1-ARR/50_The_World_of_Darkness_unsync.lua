local tbl = {
	name = "The World of Darkness",
	mesh = "[Raid] The World of Darkness 2",
	dutyid = 151,
	level = 50,
	expansion = 2,
	creator = "Rinn/Koyote",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -88.35, y = 16.00, z = 371.57}},
		[2] = {objective = 2, pos = {x = -147.19, y = 34.00, z = 296.72}},
		[3] = {objective = 3, pos = {x = 131.03, y = 63.99, z = 264.39}},
		[4] = {objective = 4, pos = {x = 200.00, y = 82.01, z = 178.74}},
--		atomos center
--		[5] = {objective = 5, pos = {x = 0.00, y = 95.25, z = -5}},
--		atomos left
		[5] = {objective = 5, pos = {x = -31.17, y = 95.25, z = 49.00}},
		[6] = {objective = 6, pos = {x = 0, y = 129.3, z = -208.82}},
		[7] = {objective = 7, pos = {x = -299.61, y = 280.05, z = -414.14}},
	},
	forcemeleerange= {3380},
	interactdistance = 40,
	interacts = {
		[1] = {contentid =2004722 , req = {objective = 4, complete = true}, priority = 1, type = "Teleporter"},
--	A
		[2] = {contentid =375 , priority = 1, type = "Chest 1"},
		[3] = {contentid =376 , priority = 1, type = "Chest 2"},
		[4] = {contentid =377 , priority = 1, type = "Chest 3"},
		[5] = {contentid =378 , priority = 1, type = "Chest 4"},
--	B
		[6] = {contentid =379 , priority = 1, type = "Chest 1"},
		[7] = {contentid =380 , priority = 1, type = "Chest 2"},
		[8] = {contentid =381 , priority = 1, type = "Chest 3"},
		[9] = {contentid =382 , priority = 1, type = "Chest 4"},
--	C
		[10] = {contentid =383 , priority = 1, type = "Chest 1"},
		[11] = {contentid =384 , priority = 1, type = "Chest 2"},
		[12] = {contentid =385 , priority = 1, type = "Chest 3"},
		[13] = {contentid =386 , priority = 1, type = "Chest 4"},
	},
	incombatinteract= {
		[1] = {interactid= "2004745", type= "interact", who = "closest", desc = "interact with trap"},
	},
	dontclearfriendlytargets = {},
	enemytargetdistance = 50,
	bossids = {3231,3234,3227,3243},
	prioritytarget = {
		[1] = {contentid = 3243, priority = 1, type = "Garm"},
		[2] = {contentid = 3244, priority = 2, type = "Two Headed Dragons"},
		[3] = {contentid = 3233, priority = 3, type = "Final Hourglass"},
		[4] = {contentid = 3298, priority = 4, type = "Forbidden Gate"},
		[5] = {contentid = 3234, priority = 5, type = "Cerberus"},
	},
	ignoretarget={3381,3382},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[1] = {castingid = 3416,
			type = "multifixed",
--		left atomos
--		[1] = {x=-31.17,y=95.25,z=49.00},[2] = {x=-31.17,y=95.25,z=49.00},[3] = {x=-31.17,y=95.25,z=49.00},[4] = {x=-31.17,y=95.25,z=49.00},[5] = {x=-31.17,y=95.25,z=49.00},[6] = {x=-31.17,y=95.25,z=49.00},[7] = {x=-31.17,y=95.25,z=49.00},[8] = {x=-31.17,y=95.25,z=49.00},
--		middle atomos
--		[1] = {x=0.03,y=95.25,z=-4.98},[2] = {x=0.03,y=95.25,z=-4.98},[3] = {x=0.03,y=95.25,z=-4.98},[4] = {x=0.03,y=95.25,z=-4.98},[5] = {x=0.03,y=95.25,z=-4.98},[6] = {x=0.03,y=95.25,z=-4.98},[7] = {x=0.03,y=95.25,z=-4.98},[8] = {x=0.03,y=95.25,z=-4.98},
			pos = {[1] = {x=-31.17,y=95.25,z=49.00},[2] = {x=-31.17,y=95.25,z=49.00},[3] = {x=-31.17,y=95.25,z=49.00},[4] = {x=-31.17,y=95.25,z=49.00},[5] = {x=-31.17,y=95.25,z=49.00},[6] = {x=-31.17,y=95.25,z=49.00},[7] = {x=-31.17,y=95.25,z=49.00},[8] = {x=-31.17,y=95.25,z=49.00},},
		},
		[2] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				function customfunction()
					local a = MEntityList("contentid=3240")
					if a then
						for b, c in pairs(a) do
							if b ~= nil and c ~= nil then
								if c ~= nil then
									if Play:GetTarget() == nil then
										if c.hp.max == 1270851 then
											Player:SetTarget(c.id)
										end
									end
								end
							end
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
--	excludeavoid aoe
	overheadmarkers = {
		[1] = {id = 1,
			contentid = "3240",
			desc= "run",
			type = "move",
			detectwho = "me",
			pos ={[1] = {x=-238.08,y=280,z=-381.43},[2] = {x=-238.08,y=280,z=-381.43},[3] = {x=-238.08,y=280,z=-381.43},[5] = {x=-238.08,y=280,z=-381.43},[6] = {x=-238.08,y=280,z=-381.43},[7] = {x=-238.08,y=280,z=-381.43},[8] = {x=-238.08,y=280,z=-381.43},},
			returnpos ={[1] = {x=-300.13,y=280.05,z=-399.44},[2] = {x=-300.13,y=280.05,z=-399.44},[3] = {x=-300.13,y=280.05,z=-399.44},[5] = {x=-300.13,y=280.05,z=-399.44},[6] = {x=-300.13,y=280.05,z=-399.44},[7] = {x=-300.13,y=280.05,z=-399.44},[8] = {x=-300.13,y=280.05,z=-399.44},},
			timetoreturn = 5
		},
	},
}

return tbl