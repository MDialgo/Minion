local tbl = {
	name = "O12N Alphascape V4.0",
	mesh = "The Interdimensional Rift",
	dutyid = 801, -- ID de la map
	level = 70,
	expansion = 4,
	creator = "Koyote#6642",
	notes = "",
	hacks = false,
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x=1000,y=0,z=100}},
	},
	forcemeleerange= {7633,7634}, -- 7633 = M, 7634 = F
	interacts = {
		[1] = {contentid = 1083, priority = 1, type = "Loot 1"},
		[2] = {contentid = 1084, priority = 2, type = "Loot 2"},
		[3] = {contentid = 1085, priority = 3, type = "Loot 3"},
	},
	enemytargetdistance = 50,
	prioritytarget = {
		--[1] = {contentid = 7633, priority = 1, desc="Omega M"},
		--[1] = {contentid = 7634, priority = 1, desc="Omega F"},
	},
	tankat= {
		[1] = {contentid = 7633, frompercent = 100, topercent = 1, pos = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, desc = "Tank at this pos from 100-1%"},
		[2] = {contentid = 7634, frompercent = 100, topercent = 1, pos = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, desc = "Tank at this pos from 100-1%"},
	},
	--[[tankspecific = {
		[1] = {who = "tank1", type = "tankat", pos = {x = 99.387092590332,	y = 0,	z = 82.792449951172}, contentid = 7633},
		[2] = {who = "tank2", type = "tankat", pos = {x = 100.24755096436,	y = 0,	z = 117.30153656006}, contentid = 7634},
		[3] = {who = "tank1", type = "forcetarget", contentid = 7633},
		[4] = {who = "tank2", type = "forcetarget", contentid = 7634},
	},]]
	useaction = {},
	advancedavoid = {
		[1] = {
			castingid = 13076, --- Ground Zero Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[2] = {
			castingid = 13092, --- Optimized Meteor Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[3] = {
			castingid = 13093, --- Optimized Meteor Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[4] = {
			castingid = 13134, --- Optimized Meteor Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[5] = {
			castingid = 13135, --- Optimized Meteor Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[6] = {
			castingid = 13041, --- Simulation F Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[7] = {
			castingid = 12628, --- Optimized Meteor Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[8] = {
			castingid = 12661, --- Simulation F Position OK
			type = "multifixed",
			pos = {
				[1] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[2] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[3] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[4] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[5] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[6] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[7] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
				[8] = {x = 100.30793762207,	y = 0,	z = 100.08142089844}, -- OK
			},
		},
		[9] = {
			type = "custom",
			customdetails = "function",
			functionname = "customfunction",
			functioncode = [[
				-- run at most once per ~0.5s
				_FOCUS_HELPER = _FOCUS_HELPER or { last = 0 }
				if TimeSince(_FOCUS_HELPER.last) < 500 then return end
				if not Player or not Player.incombat then return end

				-- decide which enemy to focus based on your buff
				local desiredCid =
					(HasBuff and HasBuff(Player.id, 1660)) and 7634
				or (HasBuff and HasBuff(Player.id, 1661)) and 7633
				or nil
				if not desiredCid then return end

				-- already focused correctly?
				local curFocus = Player.GetFocusTarget and Player:GetFocusTarget() or nil
				if curFocus and curFocus.contentid == desiredCid then return end

				-- find the target to focus
				local list = MEntityList("contentid=" .. tostring(desiredCid) .. ",targetable,alive,nearest")
				if not list then return end
				local _, e = next(list)
				if not e then return end

				-- set focus (prefer API; fallback to command)
				if Player.SetFocus then
				Player:SetFocus(e.id)
				else
				if Player.targetid ~= e.id and Player.SetTarget then Player:SetTarget(e.id) end
				SendTextCommand("/focustarget")
				end

				_FOCUS_HELPER.last = Now()
			]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
}

return tbl