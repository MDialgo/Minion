local tbl = {
	name = "Containment Bay S1T7",
	dutyid = 517,
	level = 60,
	expansion = 3,
	creator = "Exmachinas\nModified to work without ExmachinasLib by Dialgo",
	notes = "",
	queuetype = 2,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 1, y = 0, z = 18}},
		[2] = {objective = 2, pos = {x = 1, y = 0, z = 18}},
		[3] = {objective = 3, pos = {x = 1, y = 0, z = 18}},
	},
	forcemeleerange = {},
	interactdistance = 35,
	interacts = {},
	enemytargetdistance = 40,
	bossids = {},
	prioritytargetdistance = 40,
	prioritytarget = {
		[1] = {priority=1, contentid=4779, type = "Wind"},
	},
	ignoretarget = {},
	avoidentity= {},
	tankat= {},
	advancedavoid = {
		--{mapid = 517,id = 4776,pos={x = 0.02,y = 0.20,z = 1.14}},
		--5866
		[1] = {
		type = "custom",
		customdetails = "function",
		functionname = "customfunction",
		functioncode = [[
			local function tv(x)
			if type(x) == "table" then return table.valid and table.valid(x) or next(x) ~= nil end
			if type(x) == "string" then return x ~= "" end
			if type(x) == "boolean" then return x end
			if x == nil then return false end
			return true
			end

			function customfunction()
			local aoe = Argus.getCurrentAOEs()
			local pos = {x = 0.50, y = 0.20, z = -1.69}
			if tv(aoe) then
				for _,v in pairs(aoe) do
				if v.aoeID == 5866 or v.aoeID == 5868 then
					Player:MoveTo(pos.x, pos.y, pos.z)
					KitanoiSettings.avoidingtime = Now()
					break
				end
				end
			end
			end
		]]
		},
		[2] = {
		type = "custom",
		customdetails = "function",
		functionname = "customfunction",
		functioncode = [[
		-- === CONFIG ===
		local SWEEP_CAST = 5509            -- Sephirot arm sweep
		local PLATFORM   = {x=0, y=0, z=10} -- Jump platform coordinates
		local HOLD_MS    = 8000            -- Stay put 8s after cast begins

		-- Persistent settings storage
		KitanoiSettings.seph_sweep_last = KitanoiSettings.seph_sweep_last or 0
		KitanoiSettings.seph_hold_until = KitanoiSettings.seph_hold_until or 0

		-- If Sephirot starts the sweep cast, begin a "jump window"
		if KitanoiFuncs.ScanForCaster2(SWEEP_CAST) then
			KitanoiSettings.seph_hold_until = KitanoiFuncs.Now() + HOLD_MS
		end

		-- If we're inside the jump window → move and stay on platform
		if KitanoiFuncs.Now() < KitanoiSettings.seph_hold_until then
			-- Move toward platform if not already there
			if math.distance3d(Player.pos, PLATFORM) > 1.5
			and (KitanoiFuncs.Now() - KitanoiSettings.seph_sweep_last > 200) then
				KitanoiSettings.seph_sweep_last = KitanoiFuncs.Now()
				KitanoiNavigation.NavAPI.MoveTo(PLATFORM.x, PLATFORM.y, PLATFORM.z)
			end

			-- Keep avoidance locked for safety
			KitanoiSettings.avoidingtime = KitanoiFuncs.Now() + 500
			return
		end
		]]},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {5509},
	limitbreak = {},
	tethers = {},
	puddledata= {},
	enemylos = false,
}

return tbl