local tbl = {
	name = "The Jade Stoa",
	mesh = "The Jade Stoa",
	dutyid = 746,
	level = 70,
	expansion = 4,
	creator = "PG",
	notes = "",
	queuetype = 2,
	FFA = false,
	hacks = false,
	requeuetimer = 10,
	objectivedestinations = {
		[1] = {objective = 1, pos = {x = 15, y = 0, z = -15}},
	},
	interactdistance = 20,
	interacts = {},
	bossids = {
		7092, -- Byakko -- Byakko Card
	},
	forcemeleerange = {},
	enemytargetdistance = 30,
	prioritytargetdistance = 10,
	prioritytarget = {
		[1] = {contentid = 7092, priority = 1, type = "Byakko"},
	},
	incombatinteract = {},
	advancedavoid = {
		[1] = {type = "custom", customdetails = "function", functionname = "Byakko Falling Dance", functioncode = [[
				_BYAK_FALL = _BYAK_FALL or { last = 0, angle = 0 }
				local now   = (Now and Now()) or (os.clock() * 1000)
				local pulse = gPulseTime or 150
				if (now - (_BYAK_FALL.last or 0)) < pulse then
					return
				end
				_BYAK_FALL.last = now

				if not Player or not Player.pos then return end

				-- Only care during Falling (1479)
				if not (HasBuff and HasBuff(Player.id, 1479)) then
					return
				end

				-- Scan for the pushback Spells
				local lineCast  = KitanoiFuncs and KitanoiFuncs.ScanForCaster2 and KitanoiFuncs.ScanForCaster2(10819)
				local donutCast = KitanoiFuncs and KitanoiFuncs.ScanForCaster2 and KitanoiFuncs.ScanForCaster2(10822)

				local me   = Player.pos
				local move = (KitanoiNavigation and KitanoiNavigation.NavAPI and KitanoiNavigation.NavAPI.MoveTo)
							or (Player and Player.MoveTo)

				-- 10822: donut pushback, safe in the middle
				if donutCast and move then
					local center = { x = 0, y = me.y, z = 0 }
					if math.distance2d(me, center) > 0.5 then
						move(center.x, center.y, center.z)
						KitanoiSettings.avoidingtime = now + 800
					end
					return
				end

				-- 10819: line pushback - stop where we are (no movement) - This can result in you stopping in the AOE sorry
				if lineCast then
					return
				end

				-- Otherwise: orbit around the center to mess up Aramata snapshots
				if not move then return end

				local CENTER = { x = 0, y = me.y, z = 0 }  -- Y should be 0 but just incase
				local R      = 6.0                         -- orbit radius (6 seem good)
				_BYAK_FALL.angle = (_BYAK_FALL.angle or 0) + 0.25  -- ~14° per pulse clockwise
				local ang = _BYAK_FALL.angle

				local tx = CENTER.x + math.cos(ang) * R
				local tz = CENTER.z + math.sin(ang) * R
				local ty = CENTER.y

				local dest = { x = tx, y = ty, z = tz }
				if math.distance2d(me, dest) > 0.6 then
					move(dest.x, dest.y, dest.z)
					KitanoiSettings.avoidingtime = now + 200
				end
			]]
		},
	},
	hasbuff = {}, -- 1479 (Falling)
	overheadmarkers = {},
	excludeavoid = {},
	dontexcludeaoe = {10819,10822},
	pullenemyoutofpuddle = false,
}

return tbl