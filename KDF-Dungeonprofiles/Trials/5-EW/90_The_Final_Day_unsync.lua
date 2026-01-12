local tbl = {
	name = "The Final Day",
	mesh = "[Trial] The Final Day",
	dutyid = 997,
	level = 90,
	expansion = 6,
	creator = "Hikari/Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 100, y = 0, z = 100}},
	},
	interacts = {},
	bossids = {
		10448, -- The Endsinger -- Meteion Card
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	avoidentity = {
		[1] = {contentid = 10443, radius = 7},
	},
	tankat = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "27753", "27754", "false") == true) then
						if (ActionList:Get(1, 7548):IsReady()) then
							ActionList:Get(1, 7548):Cast(Player.id)
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "27753", "27754", "false") == true) then
						if (ActionList:Get(1, 7559):IsReady()) then
							ActionList:Get(1, 7559):Cast(Player.id)
						end
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "27753", "27754", "false") == true) then
						if (ActionList:Get(1, 3):IsReady()) then
							ActionList:Get(1, 3):Cast(Player.id)
						end
					end
				end
			]]
		},
		[4] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (ScanForCaster("", "100", "27753", "27754", "false") == true) then
						if (ActionList:Get(1, 7388):IsReady()) then
							ActionList:Get(1, 7388):Cast(Player.id)
						end
					end
				end
			]]
		},
		[5] = {
			castingid = 26185,
			pos = {
				[1] = {x = 84.99, y = 0, z = 95.73},
				[2] = {x = 88.92, y = 0, z = 99.48},
				[3] = {x = 93.13, y = 0, z = 101.62},
				[4] = {x = 98.5, y = 0, z = 102.73},
				[5] = {x = 103.77, y = 0, z = 102.24},
				[6] = {x = 107.33, y = 0, z = 101.26},
				[7] = {x = 110.61, y = 0, z = 100.04},
				[8] = {x = 114.24, y = 0, z = 98.15},
			},
			type = "multifixed",
		},
		[6] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local ents = MEntityList(\"contentid=10448,maxdistance=50\")
					if (ents ~= nil and TableSize(ents) > 0) then
						for i, e in pairs(ents) do
							if (e ~= nil) then
								if (not e.targetable and math.distance2d({x = 100, y = 0, z = 88}, e.pos) < 2) then
									KitanoiNavigation.NavAPI.MoveTo(112, 0, 85)
									KitanoiSettings.avoidingtime = Now()
								elseif (not e.targetable and math.distance2d({x = 91.5, y = 0, z = 91.5}, e.pos) < 2) then
									KitanoiNavigation.NavAPI.MoveTo(100, 0, 81)
									KitanoiSettings.avoidingtime = Now()
								end
							end
						end
					end
				end
			]]
		},
		[8] = {
			castingid = 27754,
			pos = {
				[1] = {x = 100, y = 0, z = 100},
				[2] = {x = 100, y = 0, z = 100},
				[3] = {x = 100, y = 0, z = 100},
				[4] = {x = 100, y = 0, z = 100},
				[5] = {x = 100, y = 0, z = 100},
				[6] = {x = 100, y = 0, z = 100},
				[7] = {x = 100, y = 0, z = 100},
				[8] = {x = 100, y = 0, z = 100},
			},
			type = "multifixed",
		},
		[9] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					local target = Player:GetTarget()
					if (Player.incombat and not target and KitanoiFuncs.HowManyAOES() == 0) then
						if
							(KitanoiFuncs.ReturnSortedParty()[1] == Player.id or KitanoiFuncs.ReturnSortedParty()[2] == Player.id or
								KitanoiFuncs.ReturnSortedParty()[3] == Player.id or
								KitanoiFuncs.ReturnSortedParty()[4] == Player.id)
						then
							KitanoiNavigation.NavAPI.MoveTo(91, 0, 100)
							KitanoiSettings.avoidingtime = Now()
						elseif
							(KitanoiFuncs.ReturnSortedParty()[5] == Player.id or KitanoiFuncs.ReturnSortedParty()[6] == Player.id or
								KitanoiFuncs.ReturnSortedParty()[7] == Player.id or
								KitanoiFuncs.ReturnSortedParty()[8] == Player.id)
						then
							KitanoiNavigation.NavAPI.MoveTo(107, 0, 104)
							KitanoiSettings.avoidingtime = Now()
						end
					end
				end
			]]
		},
		[10] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (Player.role == 1 and not MIsCasting() and KitanoiFuncs.ScanForCaster2(27481)) then
						local action = ActionList:Get(5, 3)
						if (action) then
							action:Cast(Player)
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {27754,26203},
	dontexcludeaoe = {26158,26171},
	tankbuster = {26195,26190},
}

return tbl