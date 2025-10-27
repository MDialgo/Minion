local tbl = {
	name = "The Limitless Blue (Hard) B",
	mesh = "[Trial] The Limitless Blue",
	dutyid = 436,
	level = 57,
	expansion = 3,
	creator = "Rinn",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= -9.46, y= 0.0062, z= -0.439}},
		[2] = {objective = 1, pos = {x= -9.46, y= 0.0062, z= -0.439}},
	},
	forcemeleerange= {3655},
	interactdistance = 50,
	interacts = {},
	incombatinteract= {
		[1] = {interactid= 2005541, type= "interact", req = {castingid = 4010, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[2] = {interactid= 2005541, type= "interact", req = {castingid = 4918, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[3] = {interactid= 2005541, type= "interact", req = {castingid = 5075, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[4] = {interactid= "2005544;2005545", type= "interact", who = "closest", desc = "DragonKillers"},
	},
--2005541 Magitek Field Generator
--dragonkillers 1
----dragonkillers 2
--Cetacean Rage
--3656 carapace
--3654 phase 2 add
--3655 phase 2 add
--dragon killer
-- dragon killer 2
--2005544
--2005545
--3657
--[[
 if not i then i=1 end  if not hasdebuff then hasdebuff=0 end if HasBuff(Player.id,284) and hasdebuff==0 then KitanoiSettings.avoidingtime=Now() if GetRoleString(Player.job)=='Tank' then Player:MoveTo(tankx[i],tanky[i],tankz[i]) else Player:MoveTo(otherx[i],othery[i],otherz[i]) end i=i+1 hasdebuff=1 end if not HasBuff(Player.id,284) and hasdebuff==1 then hasdebuff=0 KitanoiSettings.avoidingtime=Now() end if i==table.getn(tankx)+1 then i=1 end
--]]
--]]
	enemytargetdistance = 50,
	bossids = {3656,3655,3657},
	prioritytarget = {
		[4] = {contentid = 3655, priority = 1, type = "phase 2 adds"},
	},
	ignoretarget = {3654},
	tankat= {
		[1] = {contentid = 3655, frompercent = 100, topercent = 1, pos = {x = -18.85, y = 0.208, z = -14.118}, desc = "tank boss 12345 at this pos from 100-95%"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = "function customfunction()if not(next(Duty:GetActiveDutyObjectives())==nil)then if Duty:GetActiveDutyObjectives()[2].values[1]==100 then Player:MoveTo(-9.46,0.0062,-0.439)d('Moving To Start Trial')isOnCarapace=0;onceStopAvoidance=0 end;if HasBuff(Player.id,719)then if isOnCarapace == 0 then d('IsOnCarapace') end isOnCarapace=1;onceStopAvoidance=1 end;if not HasBuff(Player.id,719)and onceStopAvoidance==1 then onceStopAvoidance=0;KitanoiSettings.avoidingtime=Now()Player:Stop();d('Stopping Avoidance')end;if not HasBuff(Player.id,719)and onceStopAvoidance==0 and isOnCarapace==1 then KitanoiSettings.avoidingtime=Now();d('Restarting Avoidance');isOnCarapace=0 end end end"},
	},
	excludeavoid = {4011,4035,4932,5081},
}

return tbl