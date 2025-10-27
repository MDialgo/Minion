local tbl = {
	name = "Titan Ex",
--	mesh = "The Navel", --if uncommented it reloads to bigger platform
	dutyid = 296,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes="",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=0.00, y= -0.00, z= -16.00}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 227, priority = 1, type = "Loot"},
	},
	enemytargetdistance = 50,
	bossids = {1801},
	prioritytarget = {
		[1] = {contentid = 1601, priority = 3, type = "Titan"},
	},
	avoidentity= {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction()if Duty:GetActiveDutyInfo().timer>3598 then meshchangenavel=1 end;if meshchangenavel==1 then KitanoiSettings.avoidingtime=Now()Player:MoveTo(0.19,0.00,0.23)end;if math.distance2d(Player.pos,{x=0.19,z=0.23})<=1 and meshchangenavel==1 then d('on point')if not MIsLoading()and meshchangenavel==1 then d('Switching to Navel Small')FFXIV_Common_NavMesh='The Navel - Smallest'ml_mesh_mgr.LoadNavMesh(FFXIV_Common_NavMesh)meshchangenavel=0;d('meschangenavel is now 0')end end end"},
	},
}

return tbl