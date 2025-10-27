local tbl = {
	name = "Bismarck Ex",
	mesh = "[Trial] The Limitless Blue",
	dutyid = 447,
	level = 60,
	expansion = 3,
	creator = "Rinn\nModified by Dialgo for Ex",
	notes = "A little janky, but works with 3 Trials and 1 Max Carry\nTry to have 2 Tanks in the party if you are 3+",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x= -9.46, y= 0.0062, z= -0.439}},
		[2] = {objective = 1, pos = {x= -9.46, y= 0.0062, z= -0.439}},
	},
	forcemeleerange= {3654,3655,3656,3657},
	interactdistance = 50,
	interacts = {
		[1] = {contentid = 471, priority = 1, type = "Loot"}, -- Mount & Orchestrion & Craft Material
	},
	incombatinteract= {
		[1] = {interactid= 2005541, type= "interact", req = {castingid = 4010, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[2] = {interactid= 2005541, type= "interact", req = {castingid = 4918, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[3] = {interactid= 2005541, type= "interact", req = {castingid = 5075, desc = "Cetacean Rage Bismark Island"}, who = "closest", desc = "interact with something"},
		[4] = {interactid= "2005544;2005545", type= "interact", who = "closest", desc = "DragonKillers"},
	},
	enemytargetdistance = 50,
	bossids = {3656,3657},
	prioritytarget = {},
	ignoretarget = {},
--	tankspecific = {
--		[1] = {who = "tank1", type = "tankat", pos = {x = -14.19, y = -0.03, z = 12.24}, contentid = 3654,},
--		[2] = {who = "tank2", type = "tankat", pos = {x = -13.68, y = 0.06, z = -9.69}, contentid = 3655,},
--		[3] = {who = "tank1", type = "forcetarget", contentid = 3654,},
--		[4] = {who = "tank2", type = "forcetarget", contentid = 3655,},
--	},
--	tankat= {
--		[1] = {contentid = 3654, frompercent = 100, topercent = 1, pos = {x = -14.19, y = -0.03, z = 12.24}, desc = "tank boss 3654 at this pos from 100-95%"},
--		[2] = {contentid = 3655, frompercent = 100, topercent = 1, pos = {x = -13.68, y = 0.06, z = -9.69}, desc = "tank boss 3655 at this pos from 100-95%"},
--	},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode =
		[[
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
		[2] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode =
		[[
		local sorted = KitanoiFuncs.ReturnSortedParty()
		local doFirst = (Player.id == sorted[1] or Player.id == sorted[3] or Player.id == sorted[5] or Player.id == sorted[7])
		local doSecond = (Player.id == sorted[2] or Player.id == sorted[4] or Player.id == sorted[6] or Player.id == sorted[8])
		]]
		},
		[3] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode =
		[[
		local doFirst = (Player.id == KitanoiFuncs.DetermineMainTank() or false)
		local doSecond = (Player.id ~= KitanoiFuncs.DetermineMainTank() or false)
		if (doFirst) then
			local firstShooter = KitanoiFuncs.MEntityList("contentid=3654,targetable,nearest")
			if (firstShooter~=nil) then
				local i,e = next(firstShooter)
				if (i and e) then
					local dist = math.distance2d(Player.pos,e.pos)
					if (dist<5) then
						KitanoiNavigation.NavAPI.Stop()
						KitanoiSettings.avoidingtime = Now() + 2000
						if (not MIsCasting()) then
						  Player:Interact(i)
						end
					end
					if (dist>5) then
						KitanoiNavigation.NavAPI.MoveTo(-14.19,-0.03,12.24)
						KitanoiSettings.avoidingtime = Now() + 2000
					end
				end
			end
		end
		if (doSecond) then
			local secondShooter = KitanoiFuncs.MEntityList("contentid=3655,targetable,nearest")
			if (secondShooter~=nil) then
				local i,e = next(secondShooter)
				if (i and e) then
					local dist = math.distance2d(Player.pos,e.pos)
					if (dist<5) then
						KitanoiNavigation.NavAPI.Stop()
						KitanoiSettings.avoidingtime = Now() + 2000
						if (not MIsCasting()) then
						  Player:Interact(i)
						end
					end
					if (dist>5) then
						KitanoiNavigation.NavAPI.MoveTo(-13.68,0.06,-9.69)
						KitanoiSettings.avoidingtime = Now() + 2000
					end
				end
			end
		end
		]]
		},
	},
	excludeavoid = {4011,4035,4932,5081},
}

return tbl