local tbl = {
	name = "Zurvan Ex",
	dutyid = 638,
	level = 60,
	expansion = 3,
	creator = "Kitanoi",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 1, y = 0, z = 18}},
		[2] = {objective = 2, pos = {x = 1, y = 0, z = 18}},
		[3] = {objective = 3, pos = {x = 1, y = 0, z = 18}},
	},
	forcemeleerange = {5567},
	interactdistance = 35,
	interacts = {
		[1] = {contentid = 864, priority = 1, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	enemytargetdistance = 40,
	bossids = {},
	prioritytargetdistance = 40,
	prioritytarget = {},
	ignoretarget = {},
	avoidentity = {},
	tankat = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (Player:GetTarget() and not Player:GetTarget().los) then if (FFXIV_Common_NavMesh ~= '[KDF] - Zurvan 90') then  FFXIV_Common_NavMesh = '[KDF] - Zurvan 90' ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh) end end end"},
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction() if (Player:GetTarget() and Player:GetTarget().los) then if (FFXIV_Common_NavMesh ~= '[KDF] - Zurvan 360') then  FFXIV_Common_NavMesh = '[KDF] - Zurvan 360' ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh) end end end"},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = 'function customfunction() if (KitanoiFuncs.TrialStarted() and not Player:GetTarget()) then local ent = MEntityList("contentid=5567,maxdistance=50,targetable") if (ent~=nil) then for i,e in pairs(ent) do if (e) then Player:SetTarget(e.id) end end end end end'},
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
	excludeavoid = {},
	limitbreak = {},
	tethers = {},
	puddledata= {},
	enemylos = true,
}

return tbl