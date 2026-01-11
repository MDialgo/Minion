local tbl = {
	name = "Suzaku Ex",
	mesh = "",
	dutyid = 811,
	level = 70,
	expansion = 4,
	creator = "Kitanoi\nExtreme Doable : Dialgo",
	notes = "Only use Tanks\n  - Only WAR Jobs if used with Trials",
	queuetype = 2,
	FFA = true,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 99.99, y = 0, z = 89.98}},
	},
	interacts = {
		[1] = {contentid = 1096, priority = 1, type = "Loot"},
		-- Suzaku Weapons, Scarlet Tailfeather, Euphonious Kamuy Fife & Faded Copy of Sunrise
	},
	bossids = {
		7702, -- Suzaku -- Suzaku Card
	},
	forcemeleerange = {7702},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 7702, priority = 1, type = "Suzaku"},
	},
	tankat= {
		[1] = {contentid = 7702, frompercent = 100, topercent = 60, pos = {x = 117, y = 0, z = 100}, desc = "Tank at this pos from 100-60%"},
	},
	advancedavoid = {
		[1] = {castingid = 12851, type = "movebehind", dist = 7},
		[2] = {type = "custom", customdetails = "function", functionname = "Load Full Mesh at start", functioncode = [[
			function customfunction()
			-- Arm at duty start and load Phase 1 mesh once
				if Duty:GetActiveDutyInfo().timer > 3598 and not MIsLoading() then
					if FFXIV_Common_NavMesh ~= "Hells' Kier 2" then
						d('Loading Full Arena')
						FFXIV_Common_NavMesh = "Hells' Kier 2"
						ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)
					end
				end
			end
		]]},
		[3] = {type = "custom", customdetails = "function", functionname = "DDR", functioncode = [[
			local ballsup = TableSize(KitanoiFuncs.MEntityList("contentid=7705"))>0
			if (not ballsup) then
				KitanoiFuncs.SpinIt = false
			end
			if (ballsup and not KitanoiFuncs.SpinIt) then
				local tbl = {
					-- [1] = {x=100, y=0, z=108},
					-- [2] = {x=100, y=0, z=92},
					-- [3] = {x=94.300003051758, y=0, z=94.300003051758},
					-- [4] = {x=105.69999694824, y=0, z=105.69999694824},
					-- [5] = {x=92, y=0, z=100},
					-- [6] = {x=108, y=0, z=100},
					-- [7] = {x=94.300003051758, y=0, z=105.69999694824},
					-- [8] = {x=105.69999694824, y=0, z=94.300003051758},
				}
				local indices_to_keep = {}
				local function oneandtwo(o,p)
					return tonumber(o) == 1 and tonumber(p) == 2
				end
				for i,e in ipairs(KitanoiSettings.ArgusObjectScript) do

					if (i and e and e.timeadded and TimeSince(e.timeadded)<25000 and not oneandtwo(e.a2,e.a3)) then
						local ent = KitanoiFuncs.MGetEntity(e.entityID)
						if (ent) then
							table.insert(tbl,{pos = ent.pos, id = i})
						end
					end
				end

				local pl = KitanoiFuncs.ReturnSortedParty()
				for i,e in pairs(tbl) do
					if (pl[i] == Player.id) then
						if (math.distance2d(Player.pos,e.pos)>0.2) then
							KitanoiNavigation.NavAPI.MoveTo(e.pos.x,e.pos.y,e.pos.z)
							KitanoiSettings.avoidingtime = Now() + 2000
						end
						if (math.distance2d(Player.pos,e.pos)<=0.2) then
							KitanoiFuncs.StopNav()
							KitanoiFuncs.SpinIt = true
							-- local il, last = KitanoiFuncs.API.getLastArgusObjectScriptforID(e.id)
							-- d(last)
							-- if (il ~= 0 and last) then
								-- if (last.a2 == 32 and last.a3 == 64) then
									-- Player:SetFacing(math.pi/2) --east
								-- end
								-- if (last.a2 == 512 and last.a3 == 256) then
									-- Player:SetFacing(math.pi) --north
								-- end
								-- if (last.a2 == 62 and last.a3 == 34) then
									-- Player:SetFacing(math.pi) --south
								-- end
								-- if (last.a2 == 4096 and last.a3 == 2048) then
									-- Player:SetFacing(-math.pi/2) --west
								-- end
							-- end
						end
					end
				end
			end
		]],
		},
	},
	reactions = {
		[1] = {
			name = "Switch to Donut Arena",
			cause = [[
				return KitanoiFuncs.ScanForCaster2(13446)
					and not MIsLoading()
					and FFXIV_Common_NavMesh ~= "Hells' Kier"
			]],
			effect = [[
				d("Switch to Donut Arena")
				FFXIV_Common_NavMesh = "Hells' Kier"
				ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)
			]],
		},
		[2] = {
			name = "Suzaku Pushback Immunity",
			cause = [[
				return KitanoiFuncs.ScanForCaster2(13019)
					and ((ActionList:Get(1,7548) and ActionList:Get(1,7548).usable and not ActionList:Get(1,7548).isoncd)
						or (ActionList:Get(1,7559) and ActionList:Get(1,7559).usable and not ActionList:Get(1,7559).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,7548) and ActionList:Get(1,7548).usable and not ActionList:Get(1,7548).isoncd) then
					ActionList:Get(1,7548):Cast(Player.id)
				elseif (ActionList:Get(1,7559) and ActionList:Get(1,7559).usable and not ActionList:Get(1,7559).isoncd) then
					ActionList:Get(1,7559):Cast(Player.id)
				end
			]],
		},
		[3] = {
			name = "Suzaku Attract Immunity",
			cause = [[
				return KitanoiFuncs.ScanForCaster2(13018)
					and ((ActionList:Get(1,7548) and ActionList:Get(1,7548).usable and not ActionList:Get(1,7548).isoncd)
						or (ActionList:Get(1,7559) and ActionList:Get(1,7559).usable and not ActionList:Get(1,7559).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,7548) and ActionList:Get(1,7548).usable and not ActionList:Get(1,7548).isoncd) then
					ActionList:Get(1,7548):Cast(Player.id)
				elseif (ActionList:Get(1,7559) and ActionList:Get(1,7559).usable and not ActionList:Get(1,7559).isoncd) then
					ActionList:Get(1,7559):Cast(Player.id)
				end
			]],
		},
		[4] = {
			name = "Invuln PLD",
			cause = [[
				return (Player.job == 19 and KitanoiFuncs.ScanForCaster2(13008)
					and(ActionList:Get(1,30) and ActionList:Get(1,30).usable and not ActionList:Get(1,30).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,30) and ActionList:Get(1,30).usable and not ActionList:Get(1,30).isoncd) then
					ActionList:Get(1,30):Cast(Player.id)
				end
			]],
		},
		[5] = {
            name = "Invuln WAR",
            cause = [[
                return (Player.job == 21 and KitanoiFuncs.ScanForCaster2(13008)
                    and(ActionList:Get(1,43) and ActionList:Get(1,43).usable and not ActionList:Get(1,43).isoncd))
            ]],
            effect = [[
                if (ActionList:Get(1,43) and ActionList:Get(1,43).usable and not ActionList:Get(1,43).isoncd) then
                    ActionList:Get(1,43):Cast(Player.id)
                end
            ]],
		},
		[6] = {
			name = "Invuln DRK",
			cause = [[
				return (Player.job == 32 and KitanoiFuncs.ScanForCaster2(13008)
					and(ActionList:Get(1,3638) and ActionList:Get(1,3638).usable and not ActionList:Get(1,3638).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,3638) and ActionList:Get(1,3638).usable and not ActionList:Get(1,3638).isoncd) then
					ActionList:Get(1,3638):Cast(Player.id)
				end
			]],
		},
		[7] = {
			name = "Invuln GNB",
			cause = [[
				return (Player.job == 37 and KitanoiFuncs.ScanForCaster2(13008)
					and(ActionList:Get(1,16152) and ActionList:Get(1,16152).usable and not ActionList:Get(1,16152).isoncd))
			]],
			effect = [[
				if (ActionList:Get(1,16152) and ActionList:Get(1,16152).usable and not ActionList:Get(1,16152).isoncd) then
					ActionList:Get(1,16152):Cast(Player.id)
				end
			]],
		},
	},
	overheadmarkers = {
		[1] = {
			id = 139,
			contentid = "7702", -- Suzaku
			desc= "stack",
			type = "move",
			detectwho = "any",
			pos =  {
				[1] = {x = 117, y = 0, z = 100},
				[2] = {x = 117, y = 0, z = 100},
				[3] = {x = 117, y = 0, z = 100},
				[4] = {x = 117, y = 0, z = 100}
			--	[1] = {x = 117, y = 0, z = 100},
			--	[2] = {x = 110, y = 0, z = 110},
			--	[3] = {x = 100, y = 0, z = 117},
			--	[4] = {x = 114, y = 0, z = 89}
			},
			timetoreturn = 5
		},
	},
	dontexcludeavoid = {12851,12849,12850},
}

return tbl