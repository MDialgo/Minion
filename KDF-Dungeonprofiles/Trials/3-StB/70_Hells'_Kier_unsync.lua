local tbl = {
	name = "Hells' Kier",
	dutyid = 810,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = true,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=99.99,y=0,z=89.98},},
	},
	interacts = {},
	bossids = {},
	forcemeleerange = {7702},
	enemytargetdistance = 50,
	--staybehindentity = {7702},
	prioritytarget = {},
	advancedavoid = {
		[1] = {castingid = 12851, type = "movebehind", dist = 7},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
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
		[3] = { type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
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
				return KitanoiFuncs.ScanForCaster2(12848)
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
	},
	dontexcludeavoid = {12851,12849,12850},
}

return tbl