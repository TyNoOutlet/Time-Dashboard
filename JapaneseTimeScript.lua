local RS = game:GetService("RunService")
local frame = script.Parent
local japaneseClock = frame.JapaneseTimeFrame.Time
local bar = frame.JapaneseTimeFrame.Bar
local time1 = bar.Time1
local time2 = bar.Time2
local progressBar = bar.Bin.Progress

RS.Heartbeat:Connect(function()
	local yr = tonumber(os.date("%y"))
	local yday = tonumber(os.date("%j"))
	local hr = tonumber(os.date("%H"))
	local min = tonumber(os.date("%M"))
	local sec = tonumber(os.date("%S"))
	if (yday >= 1 and yday <= 12) or (yday >= 321 and yday <= 365) then
			--[[
				630 minutes daylight 810 minutes nighttime
				12:00-1:30  子 (Rat) midnight
				1:30-3:45   丑 (Ox)
				3:45-6:00   寅 (Tiger)
				6:00-7:45   卯 (Rabbit) dawn
				7:45-9:30   辰 (Dragon)
				9:30-11:15  巳 (Snake)
				11:15-1:00  午 (Horse) noon
				1:00-2:45   未 (Goat)
				2:45-4:30   申 (Monkey)
				4:30-6:45   酉 (Rooster) dusk
				6:45-9:00   戌 (Dog)
				9:00-11:15  亥 (Pig)
				11:15-12:00 子 (Rat) midnight
			]]
		if hr == 0 or (hr == 1 and min <= 30) or (hr == 23 and min > 15) then
			local progress = function()
				local thisMin = min - 15
				if hr == 0 then
					thisMin += 60
				elseif hr == 1 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/135
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "子 (Rat) - 真夜中"
		elseif (hr == 1 and min > 30) or hr == 2 or (hr == 3 and min <= 45) then
			local progress = function()
				local thisMin = min - 30
				if hr == 2 then
					thisMin += 60
				elseif hr == 3 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/135
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif (hr == 3 and min > 45) or hr == 4 or hr == 5 then
			local progress = function()
				local thisMin = min - 45
				if hr == 4 then
					thisMin += 60
				elseif hr == 5 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/135
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif hr == 6 or (hr == 7 and min <= 45) then
			local progress = function()
				local thisMin = min
				if hr == 7 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/105
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif (hr == 7 and min > 45) or hr == 8 or (hr == 9 and min <= 30) then
			local progress = function()
				local thisMin = min - 45
				if hr == 8 then
					thisMin += 60
				elseif hr == 9 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/105
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif (hr == 9 and min > 30) or hr == 10 or (hr == 11 and min <= 15) then
			local progress = function()
				local thisMin = min - 30
				if hr == 10 then
					thisMin += 60
				elseif hr == 11 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/105
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif (hr == 11 and min > 15) or hr == 12 then
			local progress = function()
				local thisMin = min - 15
				if hr == 12 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/105
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif hr == 13 or (hr == 14 and min <= 45) then
			local progress = function()
				local thisMin = min
				if hr == 14 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/105
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif (hr == 14 and min > 45) or hr == 15 or (hr == 16 and min <= 30) then
			local progress = function()
				local thisMin = min - 45
				if hr == 15 then
					thisMin += 60
				elseif hr == 16 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/105
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif (hr == 16 and min > 30) or hr == 17 or (hr == 18 and min >= 45) then
			local progress = function()
				local thisMin = min - 30
				if hr == 17 then
					thisMin += 60
				elseif hr == 18 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/135
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif (hr == 18 and min > 45) or hr == 19 or hr == 20 then
			local progress = function()
				local thisMin = min - 45
				if hr == 19 then
					thisMin += 60
				elseif hr == 20 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/135
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif hr == 21 or hr == 22 or (hr == 23 and min <= 15) then
			local progress = function()
				local thisMin = min
				if hr == 22 then
					thisMin += 60
				elseif hr == 23 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/135
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	elseif (yday >= 89 and yday <= 102) or (yday >= 242 and yday <= 267) then
			--[[
				750 minutes daylight 690 minutes nighttime
				12:00-12:15  亥 (Pig)
				12:15-2:10  子 (Rat) midnight (lunar)
				2:10-4:05   丑 (Ox)
				4:05-6:00   寅 (Tiger)
				6:00-8:05   卯 (Rabbit) dawn
				8:05-10:10   辰 (Dragon)
				10:10-12:15  巳 (Snake) 
				12:15-2:20  午 (Horse) noon (solar)
				2:20-4:25   未 (Goat)
				4:25-6:30   申 (Monkey)
				6:30-8:25   酉 (Rooster) dusk
				8:25-10:20   戌 (Dog)
				10:20-12:00  亥 (Pig)
			]]
		if (hr == 0 and min > 15) or (hr == 2 and min > 10) or hr == 1 then
			local progress = function()
				local thisMin = min - 15
				if hr == 1 then
					thisMin += 60
				elseif hr == 2 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "子 (Rat) - 真夜中"
		elseif (hr == 2 and min > 10) or hr == 3 or (hr == 4 and min <= 5) then
			local progress = function()
				local thisMin = min - 10
				if hr == 3 then
					thisMin += 60
				elseif hr == 4 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif (hr == 4 and min > 5) or hr == 5 then
			local progress = function()
				local thisMin = min - 5
				if hr == 5 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif hr == 6 or hr == 7 or (hr == 8 and min <= 5) then
			local progress = function()
				local thisMin = min
				if hr == 7 then
					thisMin += 60
				elseif hr == 8 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif (hr == 8 and min > 5) or hr == 9 or (hr == 10 and min <= 10) then
			local progress = function()
				local thisMin = min - 5
				if hr == 9 then
					thisMin += 60
				elseif hr == 10 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif (hr == 10 and min > 10) or hr == 11 or (hr == 12 and min <= 15) then
			local progress = function()
				local thisMin = min - 10
				if hr == 11 then
					thisMin += 60
				elseif hr == 12 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif (hr == 12 and min > 15) or hr == 13 or (hr == 14 and min <= 20) then
			local progress = function()
				local thisMin = min - 15
				if hr == 13 then
					thisMin += 60
				elseif hr == 14 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif (hr == 14 and min > 20) or hr == 15 or (hr == 16 and min <= 25) then
			local progress = function()
				local thisMin = min - 20
				if hr == 15 then
					thisMin += 60
				elseif hr == 16 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif (hr == 16 and min > 25) or hr == 17 or (hr == 18 and min <= 30) then
			local progress = function()
				local thisMin = min - 25
				if hr == 17 then
					thisMin += 60
				elseif hr == 18 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif (hr == 18 and min <= 30) or hr == 19 or (hr == 20 and min >= 25) then
			local progress = function()
				local thisMin = min - 30
				if hr == 19 then
					thisMin += 60
				elseif hr == 20 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif (hr == 20 and min > 25) or hr == 21 or (hr == 22 and min <= 20) then
			local progress = function()
				local thisMin = min - 25
				if hr == 21 then
					thisMin += 60
				elseif hr == 22 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif (hr == 22 and min > 20) or hr == 23 or (hr == 0 and min <= 15) then
			local progress = function()
				local thisMin = min - 20
				if hr == 23 then
					thisMin += 60
				elseif hr == 0 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	elseif (yday >= 103 and yday <= 116) or (yday >= 214 and yday <= 241) then
			--[[
				780 minutes daylight 660 minutes nighttime
				12:00-12:30  亥 (Pig)
				12:30-2:20  子 (Rat) midnight (lunar)
				2:20-4:10   丑 (Ox)
				4:10-6:00   寅 (Tiger)
				6:00-8:10   卯 (Rabbit) dawn
				8:10-10:20   辰 (Dragon)
				10:20-12:30  巳 (Snake) 
				12:30-2:40  午 (Horse) noon (solar)
				2:40-4:50   未 (Goat)
				4:50-7:00   申 (Monkey)
				7:00-8:50   酉 (Rooster) dusk
				8:50-10:40   戌 (Dog)
				10:40-12:00  亥 (Pig)
			]]
		if (hr == 0 and min > 30) or (hr == 2 and min > 20) or hr == 1 then
			local progress = function()
				local thisMin = min - 30
				if hr == 1 then
					thisMin += 60
				elseif hr == 2 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "子 (Rat) - 真夜中"
		elseif (hr == 2 and min > 20) or hr == 3 or (hr == 4 and min <= 10) then
			local progress = function()
				local thisMin = min - 20
				if hr == 3 then
					thisMin += 60
				elseif hr == 4 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif (hr == 4 and min > 10) or hr == 5 then
			local progress = function()
				local thisMin = min - 10
				if hr == 5 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif hr == 6 or hr == 7 or (hr == 8 and min <= 10) then
			local progress = function()
				local thisMin = min
				if hr == 7 then
					thisMin += 60
				elseif hr == 8 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif (hr == 8 and min > 10) or hr == 9 or (hr == 10 and min <= 20) then
			local progress = function()
				local thisMin = min - 10
				if hr == 9 then
					thisMin += 60
				elseif hr == 10 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif (hr == 10 and min > 20) or hr == 11 or (hr == 12 and min <= 30) then
			local progress = function()
				local thisMin = min - 20
				if hr == 11 then
					thisMin += 60
				elseif hr == 12 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif (hr == 12 and min > 30) or hr == 13 or (hr == 14 and min <= 40) then
			local progress = function()
				local thisMin = min - 30
				if hr == 13 then
					thisMin += 60
				elseif hr == 14 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif (hr == 14 and min > 40) or hr == 15 or (hr == 16 and min <= 50) then
			local progress = function()
				local thisMin = min - 40
				if hr == 15 then
					thisMin += 60
				elseif hr == 16 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif (hr == 16 and min > 50) or hr == 17 or hr == 18 then
			local progress = function()
				local thisMin = min - 50
				if hr == 17 then
					thisMin += 60
				elseif hr == 18 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif hr == 19 or (hr == 20 and min >= 50) then
			local progress = function()
				local thisMin = min
				if hr == 20 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif (hr == 20 and min > 50) or hr == 21 or (hr == 22 and min <= 40) then
			local progress = function()
				local thisMin = min - 50
				if hr == 21 then
					thisMin += 60
				elseif hr == 22 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif (hr == 22 and min > 40) or hr == 23 or (hr == 0 and min <= 30) then
			local progress = function()
				local thisMin = min - 40
				if hr == 23 then
					thisMin += 60
				elseif hr == 0 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	elseif (yday >= 268 and yday <= 275) then
			--[[
				720 minutes daylight 720 minutes nighttime
				12:00-2:00  子 (Rat) midnight (lunar)
				2:00-4:00   丑 (Ox)
				4:00-6:00   寅 (Tiger)
				6:00-8:00   卯 (Rabbit) dawn
				8:00-10:00   辰 (Dragon)
				10:00-12:00  巳 (Snake) 
				12:00-2:00  午 (Horse) noon (solar)
				2:00-4:00   未 (Goat)
				4:00-6:00   申 (Monkey)
				6:00-8:00   酉 (Rooster) dusk
				8:00-10:00   戌 (Dog)
				10:00-12:00  亥 (Pig)
			]]
		if hr == 0 or hr == 1 then
			local progress = function()
				local thisMin = min
				if hr == 1 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "子 (Rat) - 真夜中"
		elseif hr == 2 or hr == 3 then
			local progress = function()
				local thisMin = min 
				if hr == 3 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif hr == 4 or hr == 5 then
			local progress = function()
				local thisMin = min
				if hr == 5 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif hr == 6 or hr == 7 then
			local progress = function()
				local thisMin = min
				if hr == 7 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif hr == 8 or hr == 9 then
			local progress = function()
				local thisMin = min
				if hr == 9 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif hr == 10 or hr == 11 then
			local progress = function()
				local thisMin = min
				if hr == 11 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif hr == 12 or hr == 13 then
			local progress = function()
				local thisMin = min 
				if hr == 13 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif hr == 14 or hr == 15 then
			local progress = function()
				local thisMin = min
				if hr == 15 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif hr == 16 or hr == 17 then
			local progress = function()
				local thisMin = min
				if hr == 17 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif hr == 18 or hr == 19 then
			local progress = function()
				local thisMin = min
				if hr == 20 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif hr == 20 or hr == 21 then
			local progress = function()
				local thisMin = min
				if hr == 21 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif hr == 22 or hr == 23 then
			local progress = function()
				local thisMin = min
				if hr == 23 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/120
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	elseif (yday >= 276 and yday <= 295) then
			--[[
				690 minutes daylight 750 minutes nighttime
				12:15-2:20  子 (Rat) midnight (lunar)
				2:20-4:25   丑 (Ox)
				4:25-6:30   寅 (Tiger)
				6:30-8:25   卯 (Rabbit) dawn
				8:25-10:20   辰 (Dragon)
				10:20-12:15  巳 (Snake) 
				12:15-2:10  午 (Horse) noon (solar)
				2:10-4:05   未 (Goat)
				4:05-6:00   申 (Monkey)
				6:00-8:05   酉 (Rooster) dusk
				8:05-10:10   戌 (Dog)
				10:10-12:15  亥 (Pig)
			]]
		if (hr == 0 and min > 15) or hr == 1 or (hr == 2 and min <= 20) then
			local progress = function()
				local thisMin = min - 15
				if hr == 1 then
					thisMin += 60
				elseif hr == 2 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "子 (Rat) - 真夜中"
		elseif (hr == 2 and min > 20) or hr == 3 or (hr == 4 and min <= 25) then
			local progress = function()
				local thisMin = min - 20
				if hr == 3 then
					thisMin += 60
				elseif hr == 4 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif (hr == 4 and min > 25) or hr == 5 or (hr == 6 and min <= 30) then
			local progress = function()
				local thisMin = min - 25
				if hr == 5 then
					thisMin += 60
				elseif hr == 6 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif (hr == 6 and min > 30) or hr == 7 or (hr == 8 and min <= 25) then
			local progress = function()
				local thisMin = min - 30
				if hr == 7 then
					thisMin += 60
				elseif hr == 8 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif (hr == 8 and min > 25) or hr == 9 or (hr == 10 and min <= 20) then
			local progress = function()
				local thisMin = min - 25
				if hr == 9 then
					thisMin += 60
				elseif hr == 10 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif (hr == 10 and min > 20) or hr == 11 or (hr == 12 and min <= 15) then
			local progress = function()
				local thisMin = min - 20
				if hr == 11 then
					thisMin += 60
				elseif hr == 12 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif (hr == 12 and min > 15) or hr == 13 or (hr == 14 and min <= 10) then
			local progress = function()
				local thisMin = min - 15
				if hr == 13 then
					thisMin += 60
				elseif hr == 14 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif (hr == 14 and min > 10) or hr == 15 or (hr == 16 and min <= 5) then
			local progress = function()
				local thisMin = min - 10
				if hr == 15 then
					thisMin += 60
				elseif hr == 16 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif (hr == 16 and min > 5) or hr == 17 then
			local progress = function()
				local thisMin = min - 5
				if hr == 17 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/115
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif hr == 18 or hr == 19 or (hr == 20 and min <= 5) then
			local progress = function()
				local thisMin = min
				if hr == 19 then
					thisMin += 60
				elseif hr == 20 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif (hr == 20 and min > 5) or hr == 21 or (hr == 22 and min <= 10) then
			local progress = function()
				local thisMin = min - 5
				if hr == 21 then
					thisMin += 60
				elseif hr == 22 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif (hr == 22 and min > 10) or hr == 23 or (hr == 0 and min <= 15) then
			local progress = function()
				local thisMin = min - 10
				if hr == 23 then
					thisMin += 60
				elseif hr == 0 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/125
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	elseif (yday >= 296 and yday <= 310) then
			--[[
				660 minutes daylight 780 minutes nighttime
				12:00-2:10  子 (Rat) midnight (lunar)
				2:10-4:20   丑 (Ox)
				4:20-6:30   寅 (Tiger)
				6:30-8:20   卯 (Rabbit) dawn
				8:20-10:10   辰 (Dragon)
				10:10-12:00  巳 (Snake) 
				12:00-1:50  午 (Horse) noon (solar)
				1:50-3:40   未 (Goat)
				3:40-5:30   申 (Monkey)
				5:30-7:40   酉 (Rooster) dusk
				7:40-9:50   戌 (Dog)
				9:50-12:00  亥 (Pig)
			]]
		if hr == 0 or hr == 1 or (hr == 2 and min <= 10) then
			local progress = function()
				local thisMin = min
				if hr == 1 then
					thisMin += 60
				elseif hr == 2 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "子 (Rat) - 真夜中"
		elseif (hr == 2 and min > 10) or hr == 3 or (hr == 4 and min <= 20) then
			local progress = function()
				local thisMin = min - 10
				if hr == 3 then
					thisMin += 60
				elseif hr == 4 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif (hr == 4 and min > 20) or hr == 5 or (hr == 6 and min <= 30) then
			local progress = function()
				local thisMin = min - 20
				if hr == 5 then
					thisMin += 60
				elseif hr == 6 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif (hr == 6 and min > 30) or hr == 7 or (hr == 8 and min <= 20) then
			local progress = function()
				local thisMin = min - 30
				if hr == 7 then
					thisMin += 60
				elseif hr == 8 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif (hr == 8 and min > 20) or hr == 9 or (hr == 10 and min <= 10) then
			local progress = function()
				local thisMin = min - 20
				if hr == 9 then
					thisMin += 60
				elseif hr == 10 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif (hr == 10 and min > 10) or hr == 11 then
			local progress = function()
				local thisMin = min - 10
				if hr == 11 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif hr == 12 or (hr == 13 and min <= 50) then
			local progress = function()
				local thisMin = min
				if hr == 13 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif (hr == 13 and min > 50) or hr == 14 or (hr == 15 and min <= 40) then
			local progress = function()
				local thisMin = min - 50
				if hr == 14 then
					thisMin += 60
				elseif hr == 15 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif (hr == 15 and min > 40) or hr == 16 or (hr == 17 and min <= 30) then
			local progress = function()
				local thisMin = min - 40
				if hr == 16 then
					thisMin += 60
				elseif hr == 17 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif (hr == 17 and min > 30) or hr == 18 or (hr == 19 and min <= 40) then
			local progress = function()
				local thisMin = min - 30
				if hr == 18 then
					thisMin += 60
				elseif hr == 19 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif (hr == 19 and min > 40) or hr == 20 or (hr == 21 and min <= 50) then
			local progress = function()
				local thisMin = min - 40
				if hr == 20 then
					thisMin += 60
				elseif hr == 21 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif (hr == 21 and min > 50) or hr == 22 or hr == 23 then
			local progress = function()
				local thisMin = min - 50
				if hr == 22 then
					thisMin += 60
				elseif hr == 23 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	elseif (yday >= 311 and yday <= 320) then
			--[[
				660 minutes daylight 780 minutes nighttime
				11:00-1:10  子 (Rat) midnight (lunar)
				1:10-3:20   丑 (Ox)
				3:20-5:30   寅 (Tiger)
				5:30-7:20   卯 (Rabbit) dawn
				7:20-9:10   辰 (Dragon)
				9:10-11:00  巳 (Snake) 
				11:00-12:50  午 (Horse) noon (solar)
				12:50-2:40   未 (Goat)
				2:40-4:30   申 (Monkey)
				4:30-6:40   酉 (Rooster) dusk
				6:40-8:50   戌 (Dog)
				8:50-11:00  亥 (Pig)
			]]
		if hr == 11 or hr == 0 or (hr == 1 and min <= 10) then
			japaneseClock.Text = "子 (Rat) - 真夜中"
			local progress = function()
				local thisMin = min
				if hr == 0 then
					thisMin += 60
				elseif hr == 1 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "子 (Rat)"
			time2.Text = "丑 (Ox)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
		elseif (hr == 1 and min > 10) or hr == 2 or (hr == 3 and min <= 20) then
			local progress = function()
				local thisMin = min - 10
				if hr == 2 then
					thisMin += 60
				elseif hr == 3 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "丑 (Ox)"
			time2.Text = "寅 (Tiger)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "丑 (Ox) - 早朝"
		elseif (hr == 3 and min > 20) or hr == 4 or (hr == 5 and min <= 30) then
			local progress = function()
				local thisMin = min - 20
				if hr == 4 then
					thisMin += 60
				elseif hr == 5 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "寅 (Tiger)"
			time2.Text = "卯 (Rabbit)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "寅 (Tiger) - 早朝"
		elseif (hr == 5 and min > 30) or hr == 6 or (hr == 7 and min <= 20) then
			local progress = function()
				local thisMin = min - 30
				if hr == 6 then
					thisMin += 60
				elseif hr == 7 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "卯 (Rabbit)"
			time2.Text = "辰 (Dragon)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "卯 (Rabbit) - 夜明け"
		elseif (hr == 7 and min > 20) or hr == 8 or (hr == 9 and min <= 10) then
			local progress = function()
				local thisMin = min - 20
				if hr == 8 then
					thisMin += 60
				elseif hr == 9 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "辰 (Dragon)"
			time2.Text = "巳 (Snake)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "辰 (Dragon) - 朝"
		elseif (hr == 9 and min > 10) or hr == 10 then
			local progress = function()
				local thisMin = min - 10
				if hr == 10 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "巳 (Snake)"
			time2.Text = "午 (Horse)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "巳 (Snake) - 朝"
		elseif hr == 11 or (hr == 12 and min <= 50) then
			local progress = function()
				local thisMin = min
				if hr == 12 then
					thisMin += 60
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "午 (Horse)"
			time2.Text = "未 (Goat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "午 (Horse) - 昼"
		elseif (hr == 12 and min > 50) or hr == 13 or (hr == 14 and min <= 40) then
			local progress = function()
				local thisMin = min - 50
				if hr == 13 then
					thisMin += 60
				elseif hr == 14 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "未 (Goat)"
			time2.Text = "申 (Monkey)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "未 (Goat) - 後"
		elseif (hr == 14 and min > 40) or hr == 15 or (hr == 16 and min <= 30) then
			local progress = function()
				local thisMin = min - 40
				if hr == 15 then
					thisMin += 60
				elseif hr == 16 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/110
			end
			time1.Text = "申 (Monkey)"
			time2.Text = "酉 (Rooster)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "申 (Monkey) - 後"
		elseif (hr == 16 and min > 30) or hr == 17 or (hr == 18 and min <= 40) then
			local progress = function()
				local thisMin = min - 30
				if hr == 17 then
					thisMin += 60
				elseif hr == 18 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "酉 (Rooster)"
			time2.Text = "戌 (Dog)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "酉 (Rooster) - 夕暮れ"
		elseif (hr == 18 and min > 40) or hr == 19 or (hr == 20 and min <= 50) then
			local progress = function()
				local thisMin = min - 40
				if hr == 19 then
					thisMin += 60
				elseif hr == 20 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "戌 (Dog)"
			time2.Text = "亥 (Pig)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "戌 (Dog) - 夜"
		elseif (hr == 20 and min > 50) or hr == 21 or hr == 22 then
			local progress = function()
				local thisMin = min - 50
				if hr == 21 then
					thisMin += 60
				elseif hr == 22 then
					thisMin += 120
				end
				return (thisMin + (sec/60))/130
			end
			time1.Text = "亥 (Pig)"
			time2.Text = "子 (Rat)"
			progressBar.Size = UDim2.new(progress(), 0, 1, 0)
			japaneseClock.Text = "亥 (Pig) - 夜"
		end
	end
end)

--[[
2021 Table

|---1-12---|---13-50--|--51-62---|---63-72--|--73-88---|--89-102--|--103-116-|-117-153--|--154-208-|-209-213--|--214-241-|-242-267--|--268-275-|-276-295--|--296-310-|-311-320--|--321-365-|
|6:00+16:30|6:00+17:00|6:00+17:30|5:30+17:30|6:30+18:30|6:00+18:30|6:00+19:00|5:30+19:00|5:30+19:30|5:30+19:00|6:00+19:00|6:00+18:30|6:00+18:00|6:30+18:00|6:30+17:30|5:30+16:30|6:00+16:30|
----------------------------------------
2022 Table

|---1-12---|---13-50--|--51-62---|---63-71--|--72-88---|--89-102--|--103-116-|-117-153--|--154-208-|-209-213--|--214-241-|-242-267--|--268-275-|-276-295--|--296-309-|-310-320--|--321-365-|
|6:00+16:30|6:00+17:00|6:00+17:30|5:30+17:30|6:30+18:30|6:00+18:30|6:00+19:00|5:30+19:00|5:30+19:30|5:30+19:00|6:00+19:00|6:00+18:30|6:00+18:00|6:30+18:00|6:30+17:30|5:30+16:30|6:00+16:30|
----------------------------------------

]]
