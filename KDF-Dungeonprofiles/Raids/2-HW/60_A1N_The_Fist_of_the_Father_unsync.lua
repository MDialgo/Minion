local tbl = {
	name = "A1N Fist of the Father",
	dutyid = 442,
	level = 60,
	expansion = 3,
	creator = "Dibbi",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=-0.00,y=8.00,z=-35.68}},
		[2] = {objective = 2, pos = {x=-0.00,y=-23.91,z=-173.50}},
		[3] = {objective = 3, pos = {x=-0.00,y=-23.91,z=-173.50}},
		[4] = {objective = 4, pos = {x=-0.00,y=-23.91,z=-173.50}},
	},
	interacts = {
		[1] = {contentid = 474, priority = 1, type = "Loot 1"},
		[2] = {contentid = 473, priority = 2, type = "Loot 2"},
	},
	enemytargetdistance = 50,
	prioritytarget = {},
	ignoretarget = {2667},
	avoidentity= {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "customfunction", functioncode = [[
			function customfunction()
				local dutyObjectives = Duty:GetActiveDutyObjectives()
					if (Duty:GetDutyTimeRemaining() < 5360 and dutyObjectives[1].values[1] == 0) then
						KitanoiFuncs.LoadMesh('[Raid] The Fist of the Father Alt Route')
					end
			end
		]]
		},
	},
	overheadmarkers = {},
	puddledata= {},
}

return tbl