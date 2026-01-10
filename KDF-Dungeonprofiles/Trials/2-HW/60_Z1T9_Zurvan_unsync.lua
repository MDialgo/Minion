local tbl = {
	name = "Containment Bay Z1T9",
	mesh = "",
	dutyid = 637,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 1, y = 0, z = 18}},
		[2] = {objective = 2, pos = {x = 1, y = 0, z = 18}},
		[3] = {objective = 3, pos = {x = 1, y = 0, z = 18}},
	},
	interactdistance = 35,
	interacts = {},
	bossids = {
		5567, -- Zurvan -- Zurvan Card
	},
	forcemeleerange = {5567},
	enemytargetdistance = 40,
	prioritytargetdistance = 40,
	prioritytarget = {},
	ignoretarget = {},
	avoidentity= {},
	tankat= {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (Player:GetTarget() and not Player:GetTarget().los) then
						if (FFXIV_Common_NavMesh ~= "[KDF] - Zurvan 90") then
							FFXIV_Common_NavMesh = "[KDF] - Zurvan 90"
							ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)
						end
					end
				end
			]]
		},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (Player:GetTarget() and Player:GetTarget().los) then
						if (FFXIV_Common_NavMesh ~= "[KDF] - Zurvan 360") then
							FFXIV_Common_NavMesh = "[KDF] - Zurvan 360"
							ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)
						end
					end
				end
			]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				function customfunction()
					if (KitanoiFuncs.TrialStarted() and not Player:GetTarget()) then
						local ent = MEntityList("contentid=5567,maxdistance=50,targetable")
						if (ent ~= nil) then
							for i, e in pairs(ent) do
								if (e) then
									Player:SetTarget(e.id)
								end
							end
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {
		[1] = {
			id = 62,
			contentid = "5567",
			desc= "stack",
			type = "move",
			detectwho = "any",
			movetoentity = true,
			timetoreturn = 0,
		},
	},
	tethers = {},
	excludeavoid = {},
	limitbreak = {},
	puddledata = {},
	enemylos = true,
}

return tbl