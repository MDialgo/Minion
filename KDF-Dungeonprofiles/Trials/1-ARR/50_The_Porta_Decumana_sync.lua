local tbl = {
	name = "The Porta Decumana",
	dutyid = 1048,
	level = 50,
	expansion = 2,
	creator = "Kitanoi",
	notes = "",
	hacks = false,
	queuetype = 1,
	objectivedestinations = {
		{objective = 1,	pos = {x = -704, y = -186, z = 480} },
	},
	forcemeleerange = {2137},
	interacts = {},
	enemytargetdistance = 30,
	bossids = {7702},
	prioritytargetdistance = 15,
	prioritytarget = {},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		[3] = {
			customdetails = "function",
			functioncode = "function customfunction() local ent = MEntityList('contentid=2138,maxdistance=30') if (ent) then for i,e in pairs(ent) do if (e and Argus.isEntityVisible(e.id)) then local point = KitanoiFuncs.get_point_between_points(e.pos,{x=-704,y=-186,z=480},1) Player:MoveTo(point.x,point.y,point.z) KitanoiSettings.avoidingtime = Now()+2000 return end end end end",
			functionname = "customfunction",
			type = "custom",
		},
	},
	overheadmarkers = {
		{contentid = 2137, desc = "stacking", detectwho = "any", id = 62, movetoentity = true, precise = false, timetoreturn = 5, type = "move"},
	},
	excludeavoid = {28998,29435,28996,28510,29003,28991,29022,29015,29014,29024},
	limitbreak = {
		{contentid = 2137, level = 3, percent = 29, type = "dps"},
		{contentid = 2137, level = 2, percent = 29,	type = "dps"},
		{contentid = 2137, level = 1, percent = 29, type = "dps"},
	},
	tankbuster = {},
	requirements = "return KitanoiFuncs.TrustUpdateOut()",
	staybehindentity = {},
	reactions = {
		{
			cause = "return KitanoiFuncs.ScanForCaster2(25619) and ((ActionList:Get(1,7548).usable and not ActionList:Get(1,7548).isoncd) or (ActionList:Get(1,7559).usable and not ActionList:Get(1,7559).isoncd))",
			effect = "if (ActionList:Get(1,7548)) then ActionList:Get(1,7548):Cast(Player.id) end if (ActionList:Get(1,7559)) then ActionList:Get(1,7559):Cast(Player.id) end",
			name = "Ifrit Knockback Immunity",
		},
	},
	dontcastwhenlb = true,
}

return tbl