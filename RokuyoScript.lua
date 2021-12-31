local RS = game:GetService("RunService")
local frame = script.Parent
local day = frame.RokuyoFrame.Time
RS.Heartbeat:Connect(function()
	local yr = tonumber(os.date("*t").year)
	local month = tonumber(os.date("*t").month)
	local mday = tonumber(os.date("*t").day)
	if yr == 2021 then
		day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
	elseif yr == 2022 then
		--day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
		--day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
		--day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
		--day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
		--day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
		--day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
		if month == 1 then
			if mday == 1 or mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 30 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 2 or mday == 7 or mday == 13 or mday == 19 or mday == 25 or mday == 31 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 29 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 8 or mday == 14 or mday == 20 or mday == 26 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			end
		elseif month == 2 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 26 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			end
		elseif month == 3 then
			if mday == 1 or mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 30 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 2 or mday == 7 or mday == 13 or mday == 19 or mday == 25 or mday == 31 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 29 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 8 or mday == 14 or mday == 20 or mday == 26 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			end
		elseif month == 4 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 26 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 29 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 30 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			end
		elseif month == 5 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 26 or mday == 30 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 or mday == 31 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 29 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			end
		elseif month == 6 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 or mday == 30 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 26 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 29 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			end
		elseif month == 7 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 or mday == 30 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 26 or mday == 31 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 27 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 28 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 29 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			end
		elseif month == 8 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 or mday == 29 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 26 or mday == 30 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 31 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 27 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 28 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			end
		elseif month == 9 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 25 or mday == 30 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 26 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 27 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 28 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 29 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			end
		elseif month == 10 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 29 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 30 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 25 or mday == 31 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 26 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 27 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 24 or mday == 28 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			end
		elseif month == 11 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 24 or mday == 30 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 25 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 26 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 27 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 23 or mday == 28 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 29 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			end
		elseif month == 12 then
			if mday == 1 or mday == 7 or mday == 13 or mday == 19 or mday == 23 or mday == 29 then
				day.Text = "赤口 (Shakku) - Bad luck all day except for noon. Recommended to be extra cautious around fire and knives."
			elseif mday == 2 or mday == 8 or mday == 14 or mday == 20 or mday == 24 or mday == 30 then
				day.Text = "先勝 (Sensho) - Good luck morning, bad luck afternoon.  Good for starting new things and dealing in urgent business. Also good for winning in sports and in court."
			elseif mday == 3 or mday == 9 or mday == 15 or mday == 21 or mday == 25 or mday == 31 then
				day.Text = "友引 (Tomobiki) - Good luck all day except for noon. Bad day for sports matches but good for events."
			elseif mday == 4 or mday == 10 or mday == 16 or mday == 22 or mday == 26 then
				day.Text = "先負 (Sakimake) - Bad luck morning, good luck afternoon. Try to defer important things till the afternoon."
			elseif mday == 5 or mday == 11 or mday == 17 or mday == 27 then
				day.Text = "仏滅 (Butsumetsu) - Bad luck all day. Recommended not to do anything important today."
			elseif mday == 6 or mday == 12 or mday == 18 or mday == 28 then
				day.Text = "大安 (Taian) - Good luck all day. Favored for anything important or anything you wish to have luck in."
			end
		end
	end
end)
