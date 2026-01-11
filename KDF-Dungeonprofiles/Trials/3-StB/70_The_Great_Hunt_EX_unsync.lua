local tbl = {
	name = "Rathalos Ex",
	mesh = "",
	dutyid = 762,
	level = 70,
	expansion = 4,
	creator = "Kitanoi",
	notes = "Cannot be solo'd\n2 Warriors works well.\nDoesn't use QTE - you must kill the add in time",
	queuetype = 2,
	FFA = true,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations =	{
		[2] = {objective = 2, pos =	{x = 10, y = 17, z = 0}},
		[3] = {objective = 3, pos = {x = -14, y = 0, z = 0}},
		[4] = {objective = 4, pos = {x = 11, y = -19, z = 0}},
	},
	interacts =	{
		[1] = {contentid = 2009422, priority = 1, type = "Head"}, -- Rathalos Scale
		[2] = {contentid = 2009576, priority = 2, type = "Tail"}, -- Rathalos Scale +
		[3] = {contentid = 1034, priority = 3, type = "Loot"}, -- Rathalos Whistle, Poogie & Proof of a Hero - Monster Hunter: World Version Orchestrion Roll
	},
	bossids = {
		7221, -- Rathalos
	},
	enemytargetdistance = 45,
	prioritytarget = {
		[1] = {contentid = 6173, priority = 1, type = "Garula"},
		[2] = {contentid = 7475, priority = 2, type = "Tail"},
		[3] = {contentid = 6176, priority = 3, type = "Adds"},
		[4] = {contentid = 6175, priority = 4, type = "Adds"},
		[5] = {contentid = 6174, priority = 5, type = "Adds"},
	},
	avoidentity = {},
	tankat = {},
--	incombatinteract  = {
--		[1] = {interactid = 2009423, type = "interact", who = "closest" },
--	},
	useaction =	{},
	advancedavoid =	{
		[2] = {customdetails = "libraryfunction", functioncode = "KitanoiFuncs.RPS()", type = "custom"},
	},
	reactions =	{
		[1] = {
			cause = "return Player.hp.percent < 60 and ActionList:Get(5,26)~=nil and not ActionList:Get(5,26).isoncd and ActionList:Get(5,26):IsReady(Player) and (kdfmpdelay == nil or kdfmpdelay and TimeSince(kdfmpdelay)>5000)",
			effect = "ActionList:Get(5,26):Cast() kdfmpdelay=Now()",
			name = "Potion usage",
		},
	},
	overheadmarkers = {},
	excludeavoid = {},
	tankbuster = {},
	puddledata = {},
	enemylos = true,
	meshchange = {},
}

return tbl