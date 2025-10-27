local tbl = {
	name = "The Great Hunt",
	dutyid = 761,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "Cannot be solo'd\n2 Machinist's works well.\nDoesn't use QTE - you must kill the add in time",
	queuetype = 2,
	FFA = true,
	hacks = false,
	objectivedestinations =	{
		[2] = {objective = 2, pos = {x = 10, y = 17, z = 0} },
		[3] = {objective = 3, pos = {x = -14, y = 0, z = 0} },
		[4] = {objective = 4, pos = {x = 11, y = -19, z = 0} },
	},
	interacts = {
		{contentid = 2009422, priority = 1, type = "Head"}, -- Rathalos Scale
		{contentid = 2009576, priority = 2, type = "Tail"}, -- Rathalos Scale
	},
	bossids = {
		1, -- Rathalos
	},
	enemytargetdistance = 45,
	prioritytarget = {
		{contentid = 6173, priority = 1, type = "Garula"},
		{contentid = 7475, priority = 2, type = "Tail"},
		{contentid = 6176, priority = 3, type = "Adds"},
		{contentid = 6175, priority = 4, type = "Adds"},
		{contentid = 6174, priority = 5, type = "Adds"},
	},
	avoidentity = {},
	tankat = {},
	useaction = {},
	advancedavoid = {
		{	customdetails = "function",
			functioncode = "function customfunction() local gag = MEntityList('nearest,contentid=6173') if (gag) then local wg = KitanoiFuncs.ReturnXRecord2(1,gag) local tg = gag[wg] if (not tg.alive) then KitanoiNavigation.NavAPI.MoveTo(tg.pos.x,tg.pos.y,tg.pos.z) KitanoiSettings.avoidingtime=Now() end end end",
			functionname = "customfunction",
			type = "custom",
		},
	},
	reactions = {
		{
			cause = "return Player.hp.percent < 60 and ActionList:Get(5,26)~=nil and not ActionList:Get(5,26).isoncd and ActionList:Get(5,26):IsReady(Player) and (kdfmpdelay == nil or kdfmpdelay and TimeSince(kdfmpdelay)>5000)",
			effect = "ActionList:Get(5,26):Cast() kdfmpdelay=Now()",
			name = "Potion usage",
		},
	},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {},
	enemylos = true,
	meshchange = {},
}

return tbl