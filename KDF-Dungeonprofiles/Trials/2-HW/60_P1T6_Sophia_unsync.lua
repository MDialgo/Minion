local tbl = {
	name = "Containment Bay P1T6",
	dutyid = 576,
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
	prioritytarget = {},
	ignoretarget = {},
	avoidentity= {},
	tankat= {},
	advancedavoid = {
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
			  if tv(aoe) then
				for _,v in pairs(aoe) do
				  if v.aoeID == 6511 then
					Player:MoveTo(0,0,0)
					KitanoiSettings.avoidingtime = Now()
					break
				  end
				end
			  end
			end
		  ]]
		},
	},
	hasbuff = {},
	overheadmarkers = {},
	excludeavoid = {},
	limitbreak = {},
	tethers = {},
	puddledata= {},
	enemylos = false,
}

return tbl