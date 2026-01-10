local tbl = {
	name = "The Limitless Blue (Hard) A",
	mesh = "[Trial] The Limitless Blue",
	dutyid = 436,
	level = 57,
	expansion = 3,
	creator = "Rinn",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = -9.46, y = 0.0062, z = -0.439}},
		[2] = {objective = 1, pos = {x = -9.46, y = 0.0062, z = -0.439}},
	},
	interactdistance = 50,
	interacts = {},
	bossids = {
		3649, -- Bismarck -- Bismarck Card & (Bismarck's Baleen (Synced Only))
		3656, -- Chitin Carapace
		3657, -- Corona
	},
	forcemeleerange= {3654},
	enemytargetdistance = 50,
	prioritytarget = {
		[1] = {contentid = 3654, priority = 1, type = "phase 2 adds"},
	},
	ignoretarget = {3655},
	tankat = {
		[1] = {contentid = 3654, frompercent = 100, topercent = 1, pos = {x = -21.47, y = 0.258, z = 13.108}, desc = "tank boss 12345 at this pos from 100-95%"},
	},
	incombatinteract= {
		[1] = {interactid = 2005541, type = "interact", req = {castingid = 4010, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[2] = {interactid = 2005541, type = "interact", req = {castingid = 4918, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[3] = {interactid = 2005541, type = "interact", req = {castingid = 5075, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[4] = {interactid = "2005544;2005545", type = "interact", who = "closest", desc = "DragonKillers"},
	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
				if not(next(Duty:GetActiveDutyObjectives())==nil)then
					if Duty:GetActiveDutyObjectives()[2].values[1]==100 then
						Player:MoveTo(-9.46,0.0062,-0.439)
						d('Moving To Start Trial')
						isOnCarapace=0;
						onceStopAvoidance=0
					end;
					if HasBuff(Player.id,719)then
						if isOnCarapace == 0 then
							d('IsOnCarapace')
						end
						isOnCarapace=1;
						onceStopAvoidance=1
					end;
					if not HasBuff(Player.id,719)and onceStopAvoidance==1 then
						onceStopAvoidance=0;
						KitanoiSettings.avoidingtime=Now()
						Player:Stop();
						d('Stopping Avoidance')
					end;
					if not HasBuff(Player.id,719)and onceStopAvoidance==0 and isOnCarapace==1 then
						KitanoiSettings.avoidingtime=Now();
						d('Restarting Avoidance');
						isOnCarapace=0
					end
				end
				local DKsUp = KitanoiFuncs.MEntityList("targetable,contentid=2005544;2005545")
				if (DKsUp) then
					local counts = TableSize(DKsUp)
					KitanoiSettings.DisableKDFAvoidance = true
					if (counts == 1) then
						local action = ActionList:Get(1,3)
						if ( action and action:IsReady() ) then
							action:Cast(Player)
						end
					end
				else
					KitanoiSettings.DisableKDFAvoidance = false
				end
			]]
		},
	},
	excludeavoid = {4011,4035,4932,5081},
}

return tbl