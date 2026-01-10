local tbl = {
	name = "Thornmarch (Hard)",
	mesh = "[Trial] Thornmarch",
	dutyid = 1067,
	level = 50,
	expansion = 2,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0, z = -10}},
	},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 228, priority = 1, type = "Loot"},
		-- Mog Weapons
	},
	bossids = {
		725, -- Good King Moggle Mog XII -- Good King Moggle Mog XII Card & Moggle Mog XII's Whisker
	},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 718, priority = 3, type = "PLD"}, -- Whiskerwall Kupdi Koop
		[2] = {contentid = 719, priority = 2, type = "WAR"}, -- Ruffletuft Kupta Kapa
		[3] = {contentid = 720, priority = 1, type = "WHM"}, -- Furryfoot Kupli Kipp
		[4] = {contentid = 723, priority = 4, type = "BRD"}, -- Puksi Piko the Shaggysong
		[5] = {contentid = 721, priority = 7, type = "ARC"}, -- Woolywart Kupqu Kogi
		[6] = {contentid = 722, priority = 5, type = "BLM"}, -- Pukla Puki the Pomburner
		[7] = {contentid = 724, priority = 6, type = "ROG"}, -- Pukna Pako the Tailturner
	},
	avoidentity= {},
}

return tbl