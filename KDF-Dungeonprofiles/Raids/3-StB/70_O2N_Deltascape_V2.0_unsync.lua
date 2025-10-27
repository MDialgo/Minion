local tbl = {
	name = "O2N Deltascape V2.0",
	mesh = "Deltascape V2.0",
	dutyid = 692,
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	queuetype = 2,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 0, y = 0.067253202199936, z = -15} },
	},
	forcemeleerange = {},
	interactdistance = 20,
	interacts = {
		[1] = {contentid = 928, priority = 1, type = "Loot 1"},
		[2] = {contentid = 927, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 30,
	bossids = {5631},
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 5631, priority = 1, type = "Catastrophe"},
	},
	advancedavoid = {
		[1] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				O2N = O2N or {}
				O2N.last_duty_press = O2N.last_duty_press or 0

				if not Player or not Player.incombat then return end
				-- safety: don't try every pulse
				if TimeSince(O2N.last_duty_press) < 600 then return end

				-- has the required buff?
				if HasBuff and HasBuff(Player.id, 567) then
					-- try common action retrieval patterns
					local action =
						(ActionList.Get and ActionList:Get(1, 9483))
						or (ActionList.Get and ActionList:Get(9483))
						or (ActionList.Get and ActionList:Get(13, 1)) -- fallback: Duty Action I slot

					if action and action.IsReady and action:IsReady() then
						action:Cast(Player.id) -- cast duty action
						O2N.last_duty_press = Now()
						d("[O2N] Duty Action I used (buff 567 detected).")
						-- optional: avoid wiggle during the press
						if KitanoiSettings then
							KitanoiSettings.avoidingtime = Now()
						end
					end
				end
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	pullenemyoutofpuddle = false,
}

return tbl

--buffid = 567 "Six Fulm under"
--Actionid =  9483 "Anti Gravity Gimbal"