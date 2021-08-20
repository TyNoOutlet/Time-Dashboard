local RS = game:GetService("RunService")
local frame = script.Parent
local day = frame.DayFrame.Day

RS.Heartbeat:Connect(function()
	local yday = tonumber(os.date("%j"))
	local yr = tonumber(os.date("%y"))
	local tableOfDays = {
		-------------------January-----------------------
		"* New Year's Day \n * Eighth Day of Christmas"; --1
		"* Ninth Day of Christmas"; --2
		"* Tenth Day of Christmas"; --3
		"* Eleventh Day of Christmas";--4
		"* National Bird Day \n * Twelfth Day of Christmas";--5
		"* Epiphany \n * 1/6 (2021 event)";--6
		"* Jinjitsu (nanakusa no sekku)";--7
		"No holidays today";--8
		"No holidays today";--9
		"No holidays today";--10
		"* Kagami biraki";--11
		"No holidays today";--12
		"* Stephen Foster Memorial Day";--13
		"* Ratification Day";--14
		"No holidays today";--15
		"* National Religious Freedom Day \n * Martin Luther King Jr. Day (2023)";--16
		"* Martin Luther King Jr. Day (2022)";--17
		"No holidays today";--18
		"No holidays today";--19
		"* Inauguration Day (2021, 2025, 2029, 2033)";--20
		"No holidays today";--21
		"No holidays today";--22
		"No holidays today";--23
		"No holidays today";--24
		"No holidays today";--25
		"No holidays today";--26
		"* International Holocaust Remembrance Day";--27
		"No holidays today";--28
		"No holidays today";--29
		"* Fred Korematsu Day";--30
		"No holidays today";--31
		------------February----------------
		"* National Freedom Day";--1
		"* Groundhog Day \n * Candlemas";--2
		"* Setsubun";--3
		"No holidays today";--4
		"* Septuagesima (2023)";--5
		"No holidays today";--6
		"No holidays today";--7
		"No holidays today";--8
		"No holidays today";--9
		"No holidays today";--10
		"* National Foundation Day \n * Inventors' Day";--11
		"* Sexagesima (2023)";--12
		"* World Radio Day \n * Septuagesima (2022)";--13
		"* Valentine's Day";--14
		"* Susan B. Anthony Day";--15
		"* Fat Thursday (2023)";--16
		"No holidays today";--17
		"No holidays today";--18
		"* Shrove Sunday (2023)";--19
		"* President's Day (2023) \n * Sexagesima (2022) \n * Shrove Monday (2023)";--20
		"* President's Day (2022) \n * Shrove Tuesday (2023)";--21
		"* Washington's Birthday \n * Ash Wednesday (2023)";--22
		"* Emperor's Birthday (Naruhito)";--23
		"* Fat Thursday (2022)";--24
		"No holidays today";--25
		"No holidays today";--26
		"* Shrove Sunday (2022)";--27
		"* Shrove Monday (2022)";--28
		---------------March---------------------
		"* Shrove Tuesday (2022) \n * Ember Day 1 Quarter 1 (2023)";--1
		"* Ash Wednesday (2022) \n * Ember Day 2 Quarter 1 (2023)";--2
		"* Hinamatsuri \n * Ember Day 3 Quarter 1 (2023)";--3
		"No holidays today";--4
		"No holidays today";--5
		"No holidays today";--6
		"No holidays today";--7
		"No holidays today";--8
		"* Ember Day 1 Quarter 1 (2022)";--9
		"* Harriet Tubman Day \n * Mario Day \n * Ember Day 2 Quarter 1 (2022)";--10
		"* Ember Day 3 Quarter 1 (2022)";--11
		"* Daylight Saving Time begins (2023)";--12
		"* Daylight Saving Time begins (2022)";--13
		"* Pi Day";--14
		"No holidays today";--15
		"No holidays today";--16
		"* St. Patrick's Day";--17
		"No holidays today";--18
		"* Laetare Sunday (2023)";--19
		"* Spring Equinox (Shunbun no Hi)";--20
		"No holidays today";--21
		"No holidays today";--22
		"No holidays today";--23
		"No holidays today";--24
		"* Medal of Honor Day";--25
		"* Passion Sunday (2023)";--26
		"* Laetare Sunday (2022)";--27
		"No holidays today";--28
		"No holidays today";--29
		"* National Doctors' Day";--30
		"No holidays today";--31
		---------------------------APRIL--------------------------
		"* April Fool's Day";--1
		"* Palm Sunday (2023) \n * Pascua Florida";--2
		"* Passion Sunday (2022) \n * Holy Monday (2023)";--3
		"* Holy Tuesday (2023)";--4
		"* Holy Wednesday (2023)";--5
		"* Maundy Thursday (2023)";--6
		"* Good Friday (2023)";--7
		"* Holy Saturday (2023)";--8
		"* Easter Sunday (2023) \n * National Former POW Recognition Day";--9
		"* Palm Sunday (2022) \n * Easter Monday (2023)";--10
		"* Easter Tuesday (2023) \n * Holy Monday (2022)";--11
		"* Easter Wednesday (2023) \n * Holy Tuesday (2022)";--12
		"* Holy Wednesday (2022) \n * Easter Thursday (2023) \n * Jefferson's Birthday";--13
		"* Maundy Thursday (2022) \n * Easter Friday (2023)";--14
		"* Good Friday (2022) \n * Easter Saturday (2023) \n * ASL Day";--15
		"* Holy Saturday (2022) \n * Second Sunday of Easter (2023)";--16
		"* Easter Sunday (2022)";--17
		"* Easter Monday (2022)";--18
		"* Easter Tuesday (2022)";--19
		"* Easter Wednesday (2022)";--20
		"* Easter Thursday (2022)";--21
		"* Earth Day \n * Easter Friday (2022)";--22
		"* UN English Language Day \n * Easter Saturday (2022)";--23
		"* Second Sunday of Easter (2022)";--24
		"* Major Rogation Day";--25
		"No holidays today";--26
		"No holidays today";--27
		"* Restoration of Sovereignty Day \n * Arbor Day (2023)";--28
		"* Showa Day \n * Arbor Day (2022)";--29
		"No holidays today";--30
		--------------------MAY------------------------------
		"* May Day \n * Law Day \n * Loyalty Day";--1
		"No holidays today";--2
		"* Constitution Memorial Day \n * Sun Day";--3
		"* National Day of Prayer (2023) \n * Star Wars Day \n * Greenery Day";--4
		"* National Day of Prayer (2022) \n * Children's Day, or Tango no sekku \n * Cinco de Mayo";--5
		"* Military Spouse Day (2022) ";--6
		"No holidays today";--7
		"* Mother's Day (2022)";--8
		"No holidays today";--9
		"No holidays today";--10
		"No holidays today";--11
		"* Military Spouse Day (2023)";--12
		"No holidays today";--13
		"* Mother's Day (2023)";--14
		"* Peace Officer's Memorial Day \n * Minor Rogation Day (2023)";--15
		"* Minor Rogation Day (2023)";--16
		"* Minor Rogation Day (2023)";--17
		"* Ascension Thursday (2023)";--18
		"No holidays today";--19
		"* Armed Forces Day (2023) \n * Emancipation Day";--20
		"* Armed Forces Day (2022)";--21
		"* National Maritime Day";--22
		"* Minor Rogation Day (2022)";--23
		"* Minor Rogation Day (2022)";--24
		"* National Tap Dance Day \n * National Missing Children's Day \n * Minor Rogation Day (2022)";--25
		"* Ascension Thursday (2022)";--26
		"No holidays today";--27
		"* Pentecost (2023)";--28
		"* Pentecost Monday (2023)";--29
		"No holidays today";--30
		"No holidays today";--31
		------------------------JUNE-------------------------------
		"No holidays today";--1
		"No holidays today";--2
		"No holidays today";--3
		"* Trinity Sunday (2023)";--4
		"* Pentecost (2022)";--5
		"* Pentecost Monday (2022)";--6
		"No holidays today";--7
		"* Ember Day 1 Quarter 2 (2022)";--8
		"* Ember Day 2 Quarter 2 (2022)";--9
		"* Ember Day 3 Quarter 2 (2022)";--10
		"No holidays today";--11
		"* Trinity Sunday (2022)";--12
		"No holidays today";--13
		"* Flag Day";--14
		"No holidays today";--15
		"No holidays today";--16
		"No holidays today";--17
		"* Father's Day (2023)";--18
		"* Juneteenth \n * Father's Day (2022)";--19
		"No holidays today";--20
		"* Summer Solstice";--21
		"No holidays today";--22
		"No holidays today";--23
		"No holidays today";--24
		"* National Catfish Day";--25
		"No holidays today";--26
		"* Helen Keller Day";--27
		"No holidays today";--28
		"No holidays today";--29
		"No holidays today";--30
		----------------------JULY-------------------------------
		"No holidays today";--1
		"No holidays today";--2
		"* Beginning of dog days";--3
		"* Independence Day";--4
		"No holidays today";--5
		"No holidays today";--6
		"* Tanabata";--7
		"No holidays today";--8
		"No holidays today";--9
		"No holidays today";--10
		"* Free Slurpee Day";--11
		"No holidays today";--12
		"No holidays today";--13
		"No holidays today";--14
		"* Chugen";--15
		"* Marine Day (2023)";--16
		"* Marine Day (2022)";--17
		"No holidays today";--18
		"No holidays today";--19
		"No holidays today";--20
		"No holidays today";--21
		"No holidays today";--22
		"* Parents' Day (2023)";--23
		"* Parent's Day (2022)";--24
		"No holidays today";--25
		"No holidays today";--26
		"No holidays today";--27
		"No holidays today";--28
		"No holidays today";--29
		"No holidays today";--30
		"No holidays today";--31
		-----------------AUGUST--------------------------------
		"No holidays today";--1
		"No holidays today";--2
		"No holidays today";--3
		"* Coast Guard Day";--4
		"No holidays today";--5
		"* Friendship Day (2023)";--6
		"* Friendship Day (2022) \n * National Purple Heart Day";--7
		"* International Cat Day";--8
		"No holidays today";--9
		"No holidays today";--10
		"* Mountain Day \n * End of dog days";--11
		"No holidays today";--12
		"No holidays today";--13
		"No holidays today";--14
		"No holidays today";--15
		"No holidays today";--16
		"No holidays today";--17
		"No holidays today";--18
		"* National Aviation Day";--19
		"No holidays today";--20
		"No holidays today";--21
		"No holidays today";--22
		"No holidays today";--23
		"No holidays today";--24
		"No holidays today";--25
		"* Women's Equality Day";--26
		"No holidays today";--27
		"No holidays today";--28
		"No holidays today";--29
		"No holidays today";--30
		"No holidays today";--31
		-------------SEPTEMBER-------------------------------
		"* Disaster Prevention Day";--1
		"No holidays today";--2
		"No holidays today";--3
		"* Labor Day (2023)";--4
		"* Labor Day (2022)";--5
		"* Labor Day (2021)";--6
		"No holidays today";--7
		"No holidays today";--8
		"* Double Nine Festival (Kiku no sekku)";--9
		"* Grandparents' Day (2023) \n * Tsukimi begins (2022)";--10
		"* Patriot Day \n * Grandparents' Day (2022)";--11
		"* Grandparents' Day (2021)";--12
		"* Programmers' Day \n * Tsukimi ends (2022) \n * Ember Day 1 Quarter 3 (2023)";--13
		"* Holy Cross Day \n * Ember Day 1 Quarter 3 (2022) \n * Ember Day 2 Quarter 3 (2023)";--14
		"* POW/MIA Recognition Day (2023) \n * Ember Day 1 Quarter 3 (2021) \n * Ember Day 2 Quarter 3 (2022) \n * Ember Day 3 Quarter 3 (2023)";--15
		"* POW/MIA Recognition Day (2022) \n * Constitution Day (2022) \n * Ember Day 2 Quarter 3 (2021) \n * Ember Day 3 Quarter 3 (2022)";--16
		"* POW/MIA Recognition Day (2021) \n * Constitution Day (2021) \n * Ember Day 3 Quarter 3 (2021)";--17
		"* Respect for the Aged Day (2023) \n * Constitution Day (2023)";--18
		"* Respect for the Aged Day (2022)";--19
		"* Respect for the Aged Day (2021)";--20
		"* Tsukimi begins (2021)";--21
		"No holidays today";--22
		"* Fall equinox (Shubun no Hi)";--23
		"* Tsukimi ends (2021)";--24
		"No holidays today";--25
		"* National Good Neighbor Day";--26
		"No holidays today";--27
		"No holdiays today";--28
		"* Tsukimi begins (2023)";--29
		"No holidays today";--30
		------------OCTOBER--------------------------
		"No holidays today";--1
		"* Tsukimi ends (2023)";--2
		"No holidays today";--3
		"* World Space Week Begins";--4
		"No holidays today";--5
		"No holidays today";--6
		"No holidays today";--7
		"No holidays today";--8
		"* Leif Erikson Day \n * Fire Prevention Day \n * Indigenous Peoples' Day (2023)";--9
		"* Indigenous Peoples' Day (2022)";--10
		"* Indigenous Peoples' Day (2021)";--11
		"No holidays today";--12
		"No holidays today";--13
		"No holidays today";--14
		"* White Cane Safety Day";--15
		"No holidays today";--16
		"No holidays today";--17
		"No holidays today";--18
		"No holidays today";--19
		"No holidays today";--20
		"No holidays today";--21
		"No holidays today";--22
		"No holidays today";--23
		"* Food Day";--24
		"No holidays today";--25
		"No holidays today";--26
		"* Navy Day";--27
		"No holidays today";--28
		"No holidays today";--29
		"* Mischief Night";--30
		"* Halloween";--31
		--------NOVEMBER----------
		"* All Saints' Day \n * Self-Defense Forces Commemoration Day \n * National Brush Day";--1
		"* All Souls' Day";--2
		"* Culture Day";--3
		"* National Bison Day (2023)";--4
		"* National Bison Day (2022)";--5
		"* National Bison Day (2021)";--6
		"No holidays today";--7
		"No holidays today";--8
		"* World Freedom Day";--9
		"No holidays today";--10
		"* Veterans Day";--11
		"No holidays today";--12
		"No holidays today";--13
		"No holidays today";--14
		"* National Recycling Day \n * Shichi-go-san";--15
		"No holidays today";--16
		"No holidays today";--17
		"No holidays today";--18
		"No holidays today";--19
		"* Stir-up Sunday (2022)";--20
		"* World Television Day \n * Stir-up Sunday (2021)";--21
		"No holidays today";--22
		"* Thanksgiving (2023)";--23
		"* Thanksgiving (2022) \n * Black Friday (2023)";--24
		"* Thanksgiving (2021) \n * Black Friday (2022)";--25
		"* Black Friday (2021) \n * Stir-up Sunday (2023)";--26
		"* First Sunday of Advent (2022)";--27
		"* First Sunday of Advent (2021)";--28
		"No holidays today";--29
		"No holidays today";--30
		------------DECEMBER---------------------
		"No holidays today";--1
		"No holidays today";--2
		"* First Sunday of Advent (2023)";--3
		"* Second Sunday of Advent (2022)";--4
		"* Second Sunday of Advent (2021)";--5
		"No holidays today";--6
		"* National Pearl Harbor Remebrance Day";--7
		"No holidays today";--8
		"No holidays today";--9
		"* Second Sunday of Advent (2023)";--10
		"* Third Sunday of Advent (2022)";--11
		"* Third Sunday of Advent (2021)";--12
		"No holidays today";--13
		"* Monkey Day \n * Ember Day 1 Quarter 4 (2022)";--14
		"* Bill of Rights Day \n * Ember Day 1 Quarter 4 (2021) \n * Ember Day 2 Quarter 4 (2022)";--15
		"* Ember Day 2 Quarter 4 (2021) \n * Ember Day 3 Quarter 4 (2022)";--16
		"* Pan American Aviation Day \n * Third Sunday of Advent (2023) \n * Ember Day 3 Quarter 4 (2021)";--17
		"* Fourth Sunday of Advent (2022)";--18
		"* Fourth Sunday of Advent (2021)";--19
		"* Ember Day 1 Quarter 4 (2023)";--20
		"* Ember Day 2 Quarter 4 (2023)";--21
		"* Winter solstice (Dongzhi Festival) \n * Ember Day 3 Quarter 4 (2023)";--22
		"No holidays today";--23
		"* Fourth Sunday of Advent (2023) \n * Christmas Eve";--24
		"* Christmas Day (First Day of Christmas)";--25
		"* Second Day of Christmas";--26
		"* Third Day of Christmas";--27
		"* Fourth Day of Christmas";--28
		"* Fifth Day of Christmas \n * Make Kagami Mochi";--29
		"* Sixth Day of Christmas \n * Make osechi";--30
		"* Seventh Day of Christmas \n * New Years Eve (Omisoka)"--31
	}
	if yr ~= 24 and yr ~= 28 and yr ~= 32 then
		day.Text = "Today is: \n " .. tableOfDays[yday]
	end
end)
