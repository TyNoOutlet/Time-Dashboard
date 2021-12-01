local RS = game:GetService("RunService")
local frame = script.Parent
local day = frame.CustomFrame.Day

RS.Heartbeat:Connect(function()
	local yday = tonumber(os.date("*t").yday)
	local yr = tonumber(os.date("*t").year)
	local tableOfDays = {
		-------------------January-----------------------
		"* New Year's Day: Many of the items that were prepared on previous days are used on this day, such as the osechi, some of the mochi excluding the kagami mochi, and receiving New Year's cards. New things that are done on this day include creating haiku, playing games like sugoroku, fukuwarai, kite flying, hanetsuki, and karuta. Beethoven's Ninth Symphony is also popular around this time. Some people may fall asleep on this night for the first time since rising on December 31st, and so the dream that one has this night is called hatsuyume, first dream. If this dream has Moutn Fuji, a hawk, and an eggplant, the dreamer has good luck. The first sunrise, first laughter, and first calligraphy are considered momentous. \n * Eighth Day of Christmas: Certain Bible verses are sometimes read, such as Numbers 6:22-27, Galatians 4:4-7, Phlippians 2:5-11, and Luke 2:15-21"; --1
		"* Ninth Day of Christmas: Certain Bible verses are sometimes read, such as Proverbs 1:1-7, James 3:13-18, and Psalm 147:12-20. In addition, New Year's celebrations continue today, including eating mochi and osechi, as well as playing games."; --2
		"* Tenth Day of Christmas: Certain Bible verses are sometimes read, such as Job 42:10-17, Luke 8:16-21, and Psalm 72. In addition, New Year's celebrations continue today, including eating mochi and osechi, as well as playing games."; --3
		"* Eleventh Day of Christmas: Certain Bible verses are sometimes read, such as Isaiah 6:1-5 and Acts 7:44-53. In addition, New Year's celebrations continue through and cease after today, including eating mochi and osechi, as well as playing games.";--4
		"* Twelfth Day of Christmas/Twelfth Night: Drinking wassail and going caroling for the last time of the season are common. The king cake that will be eaten on Epiphany is often baked today. In addition, being the last day of Christmas, certain Bible verses are sometimes read, including Jeremiah 31:7-1 and John 1:1-18, and Christmas decorations are often removed today.";--5
		"* Epiphany: The Epiphany season begins today. Eating king cake is typical on this day, and some people chalk the front door with the first two digits of the year, then C + M + B, then the last two digits of the year.";--6
		"* Jinjitsu (nanakusa no sekku): It is typical to eat a rice congee with 7 specific herbs on this day. Local variations of the herbs are common.";--7
		"";--8
		"";--9
		"";--10
		"* Kagami biraki: The kagami mochi that was placed somewhere in the house in December is broken and eaten today.";--11
		"";--12
		"";--13
		"* Ratification Day: It is suggested to read the proclamation of ratification of the Treaty of Paris.";--14
		"";--15
		"* National Religious Freedom Day: Memorializing the important freedom of religion in our country that was created by Thomas Jefferson in the Virginia Statue for Religious Freedom. It is recommended to read this document. \n * Martin Luther King Jr. Day (2023): Memorializing the services to the United States of Martin Luther King Jr. Often a day off from school and work, people are officially encouraged to volunteer and do good deeds today. The holiday is also celebrated in Hiroshima with a special banquet.";--16
		"* Martin Luther King Jr. Day (2022): Memorializing the services to the United States of Martin Luther King Jr. Often a day off from school and work, people are officially encouraged to volunteer and do good deeds today. The holiday is also celebrated in Hiroshima with a special banquet.";--17
		"";--18
		"";--19
		"* Inauguration Day (2021, 2025, 2029, 2033): Watching the Presidential Inauguration if one is able to is considered important, as it only happens once every four years and often welcomes in a new president.";--20
		"";--21
		"";--22
		"";--23
		"";--24
		"";--25
		"";--26
		"";--27
		"";--28
		"";--29
		"* Fred Korematsu Day: Memorializing civil rights activist Fred Korematsu.";--30
		"";--31
		------------February----------------
		"* National Freedom Day: Memorializing the signing of the 13th Amendment, and starting off Black History Month.";--1
		"* Groundhog Day: If the shadow of a groundhog in Punxsutawney, Pennsylvania is seen, then it means winter will last for six more weeks. Otherwise, spring will come early. It is sometimes generalized to mean if the weather is clear on this day, then winter will persist until the equinox.\n * Candlemas: Epiphany season ends today. Candles are blessed and/or made today, and depending on the jurisdiction, either crepes, tamales or a similar food are eaten today.";--2
		"* Setsubun (2022): Mameki (throwing roasted soybeans or peanuts at a demon or out the front door) is common today. Then, the number of roasted legumes that is equivalent to the person's age + 1 are eaten after that. Eho-maki (lucky direction sushi rolls) are also eaten today with one's eyes closed, and some decorate the front door/entrance of the house with holly leaves and/or fish heads.";--3
		"";--4
		"* Septuagesima (2023): Beginning of the preparations for the Lenten season, AKA Shrovetide. From today through Sexagesima, the first chapters of Genesis are read.";--5
		"";--6
		"";--7
		"";--8
		"";--9
		"";--10
		"* National Foundation Day: Reflects on the history of Japan, on the traditional founding date in 660 BC. \n * National Inventors' Day: Commemorates the inventors of America. Coincides with Thomas Edison's birthday.";--11
		"* Sexagesima (2023): Continuations of Septuagesima are kept on this day as further preparations for Lent continue.";--12
		"* World Radio Day: Learn about the workings of radio, listen to the radio, and reflect how the radio has shaped human history. \n * Septuagesima (2022): Beginning of the preparations for the Lenten season, AKA Shrovetide. From today through Sexagesima, the first chapters of Genesis are read.";--13
		"* Valentine's Day: Cards and chocolate (giri choko, honmei choko and tomo choko) are exchanged on this day.";--14
		"* Susan B. Anthony Day: Commemorating activist Susan B. Anthony.";--15
		"* Fat Thursday (2023): Sweet pastries, often fried or with cream and/or jam, are eaten today.";--16
		"";--17
		"";--18
		"* Shrove Sunday (2023): Luke 18:31-43 is often read on this day. Meat, which is typically not eaten during Lent, is eaten on this day.";--19
		"* Presidents' Day (2023): Commemorating all presidents, but normally specifically Washington and Lincoln. It is recommended to read about their presidencies on this day. \n * Sexagesima (2022): Continuations of Septuagesima are kept on this day as further preparations for Lent continue. \n * Shrove Monday (2023): Bacon and eggs are traditionally eaten for breakfast on this day, and the fat from the bacon is saved for Shrove Tuesday.";--20
		"* Presidents' Day (2022): Commemorating all presidents, but normally specifically Washington and Lincoln. It is recommended to read about their presidencies on this day. \n * Shrove Tuesday (2023): Pancakes are traditionally eaten on this day, and Lenten sacrifices are decided. ";--21
		"* Ash Wednesday (2023): Ashes are placed on the forehead, and Lent begins. During Lent, one Lenten sacrifice is given up. Specifically on Ash Wednesday, however, an extreme fast, with one full meal and two very small meals, is eaten.";--22
		"* Emperor's Birthday (Naruhito): The Imperial Palace grounds are opened to the public, and the Emperor typically gives greetings and thanks.";--23
		"* Fat Thursday (2022): Sweet pastries, often fried or with cream and/or jam, are eaten today.";--24
		"";--25
		"";--26
		"* Shrove Sunday (2022): Luke 18:31-43 is often read on this day. Meat, which is typically not eaten during Lent, is eaten on this day.";--27
		"* Shrove Monday (2022): Bacon and eggs are traditionally eaten for breakfast on this day, and the fat from the bacon is saved for Shrove Tuesday.";--28
		---------------March---------------------
		"* Shrove Tuesday (2022): Pancakes are traditionally eaten on this day, and Lenten sacrifices are decided. \n * Ember Day 1 Quarter 1 (2023): Fasting and prayer are specially done on the Ember Days.";--1
		"* Ash Wednesday (2022) \n * Ember Day 2 Quarter 1 (2023): Fasting and prayer are specially done on the Ember Days.";--2
		"* Hinamatsuri: Also known as Girls' Day, a very expensive and beautiful doll set is placed in households with girls, and foods such as hishi mochi, chirashizushi, and amazake are consumed. \n * Ember Day 3 Quarter 1 (2023): Fasting and prayer are specially done on the Ember Days.";--3
		"";--4
		"";--5
		"";--6
		"";--7
		"";--8
		"* Ember Day 1 Quarter 1 (2022): Fasting and prayer are specially done on the Ember Days.";--9
		"* Harriet Tubman Day: Commemorates activist Harriet Tubman. \n * Ember Day 2 Quarter 1 (2022): Fasting and prayer are specially done on the Ember Days.";--10
		"* Ember Day 3 Quarter 1 (2022): Fasting and prayer are specially done on the Ember Days.";--11
		"* Daylight Saving Time begins (2023): Clocks are set forward by one hour at 2:00 AM on this day.";--12
		"* Daylight Saving Time begins (2022): Clocks are set forward by one hour at 2:00 AM on this day.";--13
		"* Pi Day: A pun involving the fact that the first three digits of Pi, 3.14, is the same as the date, 3/14. Pie is often sold for $3.14 or a similar discounted price on this day and eaten.";--14
		"";--15
		"";--16
		"* St. Patrick's Day: A day devoted to everything Irish, shamrock, and green. Wear green on this day and eat and drink Irish fare.";--17
		"";--18
		"* Laetare Sunday (2023): While Sundays typically do not conform to Lenten fasts, this day is considered extra relaxed from Lenten sacrifices and other fasting items, and meat etc. is eaten today.";--19
		"";--20
		"* Spring Equinox (Shunbun no Hi): Botamochi is eaten on this day, and it is an important day to reflect on one's ancestors.";--21
		"";--22
		"";--23
		"";--24
		"* Medal of Honor Day: A day to reflect on the brave individuals who have earned the Medal of Honor";--25
		"* Passion Sunday (2023): The beginning of Passiontide. Crosses in churches are usually covered with a veil.";--26
		"* Laetare Sunday (2022): While Sundays typically do not conform to Lenten fasts, this day is considered extra relaxed from Lenten sacrifices and other fasting items, and meat etc. is eaten today.";--27
		"";--28
		"";--29
		"* National Doctors' Day: Commemorates the work of doctors.";--30
		"";--31
		---------------------------APRIL--------------------------
		"* April Fool's Day: Pranks are played on unaware people until noon, after which it is sometimes considered to be rude to play pranks. Also, while not a holiday, the school year and fiscal year start on this day in Japan, and it is generally seen as a good day to start new things.";--1
		"* Palm Sunday (2023): Fresh palm leaves are generally retrieved from either the church or from one's yard, and are placed around or outside the house. \n * Pascua Florida: The day Ponce de Leon first spotted Florida. Celebrated with flowers and history reflections.";--2
		"* Passion Sunday (2022): The beginning of Passiontide. Crosses in churches are usually covered with a veil. \n * Holy Monday (2023): The traditional day Jesus cursed the fig tree, cleansed the temple, and responded to the questioning of his authority. The Book of Matthew and half of the Book of Mark are read today.";--3
		"* Holy Tuesday (2023): The second half of Mark and the first two thirds of Luke are read today.";--4
		"* Holy Wednesday (2023): The last third of Luke and the Book of John through John 13:31 are read today, and the tenebrae (darkness with a loud sound) happens today. Additionally, the koinobori are typically displayed on this day in preparation for Children's Day a month later.";--5
		"* Maundy Thursday (2023): Cleaning is an important theme today, and feet are often washed today.";--6
		"* Good Friday (2023): The day Jesus died on the cross. An extreme fast, with one full meal and two very small meals, is eaten. Sometimes a Three Hours' Agony, a three hour long service from 12pm to 3pm, is taken. Hot cross buns are oftne made and eaten on this day.";--7
		"* Holy Saturday (2023): The veil over the cross is removed and many restrictions during Lent are slightly lifted. An extreme fast, with one full meal and two very small meals, is eaten. Sometimes, an Easter Vigil is taken overnight.";--8
		"* Easter Sunday (2023): Passiontide ends at midnight and Eastertide begins. Egg rolling, egg hunts, egg tapping, and visiting family are common. \n * National Former POW Recognition Day";--9
		"* Palm Sunday (2022) Fresh palm leaves are generally retrieved from either the church or from one's yard, and are placed around or outside the house. \n * Easter Monday (2023): Generally a day for enjoying the outdoors and continuing some Easter games such as egg tapping. Matthew 28:8-15 is read today.";--10
		"* Easter Tuesday (2023): Some egg traditions from Easter are continued. John 20:11-18 is read today. \n * Holy Monday (2022): The traditional day Jesus cursed the fig tree, cleansed the temple, and responded to the questioning of his authority. The Book of Matthew and half of the Book of Mark are read today.";--11
		"* Easter Wednesday (2023): Luke 24:13-35 is read today. \n * Holy Tuesday (2022): The second half of Mark and the first two thirds of Luke are read today.";--12
		"* Holy Wednesday (2022): The last third of Luke and the Book of John through John 13:31 are read today, and the tenebrae (darkness with a loud sound) happens today. \n * Easter Thursday (2023): Luke 24:35-48 is read today. \n * Jefferson's Birthday: Commemorates the life of Thomas Jefferson.";--13
		"* Maundy Thursday (2022): Cleaning is an important theme today, and feet are often washed today. \n * Easter Friday (2023): John 21:1-14 is read today. \n * Orange Day: Celebrating all things to do with oranges. Orange juice and oranges are consumed, often while watching a movie.";--14
		"* Good Friday (2022): The day Jesus died on the cross. An extreme fast, with one full meal and two very small meals, is eaten. Sometimes a Three Hours' Agony, a three hour long service from 12pm to 3pm, is taken. Hot cross buns are oftne made and eaten on this day. \n * Easter Saturday (2023): Mark 16:9-15 is read today.";--15
		"* Holy Saturday (2022): The veil over the cross is removed and many restrictions during Lent are slightly lifted. An extreme fast, with one full meal and two very small meals, is eaten. Sometimes, an Easter Vigil is taken overnight. \n * Second Sunday of Easter (2023): John 20:26-29 is sometimes read today.";--16
		"* Easter Sunday (2022):  Passiontide ends at midnight and Eastertide begins. Egg rolling, egg hunts, egg tapping, and visiting family are common.";--17
		"* Easter Monday (2022): Generally a day for enjoying the outdoors and continuing some Easter games such as egg tapping. Matthew 28:8-15 is read today.";--18
		"* Easter Tuesday (2022): Some egg traditions from Easter are continued. John 20:11-18 is read today.";--19
		"* Easter Wednesday (2022): Luke 24:13-35 is read today.";--20
		"* Easter Thursday (2022):  Luke 24:35-48 is read today.";--21
		"* Earth Day: In general, mindfulness on pollution and conservation are observed. \n * Easter Friday (2022): John 21:1-14 is read today.";--22
		"* Easter Saturday (2022): Mark 16:9-15 is read today.";--23
		"* Second Sunday of Easter (2022): John 20:26-29 is sometimes read today.";--24
		"* Major Rogation Day: Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common.";--25
		"";--26
		"";--27
		"* Restoration of Sovereignty Day: Celebrate the restored sovereignty of Japan after America's occupation of the former. Marks the beginning of Golden Week. \n * Arbor Day (2023): Planting a tree and observing other green habits is common on this day.";--28
		"* Showa Day: Commemorates the reign of Showa. The main purpose of the day is to reflect on his reign, especially during World War II, rather than glorify the controversial emperor. \n * Arbor Day (2022): Planting a tree and observing other green habits is common on this day.";--29
		"";--30
		--------------------MAY------------------------------
		"* May Day: Celebrates the coming of hot weather and Spring. Maypole circling is a common celebration. \n * Law Day: A day to reflect on the usefulness of the law on the American society. \n * Loyalty Day: A day to recognize American freedom, and historically a holiday against Communism.";--1
		"";--2
		"* Constitution Memorial Day: A day to reflect the Japanese constitution, often focussing on Article 9. \n * Sun Day: A day devoted to advocation of solar power. \n * Hachijū hachiya: Tea picked on this day is considered top quality; therefore, drinking (green) tea on this day is said to lead to a long life. Literally 88 nights since Risshun, it is also said to be the last day when a frost may occur.";--3
		"* National Day of Prayer (2023): A day encouraging Americans to pray and meditate. \n * Star Wars Day: A joke holiday on which is is typical to greet people with 'May the Fourth (like May the Force) be with you. ' \n * Greenery Day: A day to celebrate plants and the outdoors.";--4
		"* National Day of Prayer (2022): A day encouraging Americans to pray and meditate. \n * Children's Day (Tango no sekku): A day to commemorate children. Kashiwa mochi and chimaki are typically eaten on this day. Golden Week ends today. \n * Cinco de Mayo: Mexican food and drinks are typically consumed today.";--5
		"* Military Spouse Day (2022): A day for remembering the spouses of active duty military members.";--6
		"";--7
		"* Mother's Day (2022): A day for remembering and visitng mothers. Carnations and cards are typically given on this day.";--8
		"";--9
		"";--10
		"No holiday today, but it is recommended to remove koinobori on this day.";--11
		"* Military Spouse Day (2023): A day for remembering the spouses of active duty military members.";--12
		"";--13
		"* Mother's Day (2023): A day for remembering and visitng mothers. Carnations and cards are typically given on this day.";--14
		"* Peace Officers Memorial Day: A day to memorialize offciers who were wounded or killed in the line of duty. \n * Minor Rogation Day (2023): Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common.";--15
		"* Minor Rogation Day (2023): Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common.";--16
		"* Minor Rogation Day (2023): Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common. A vigil for the next day is generally taken.";--17
		"* Ascension Thursday (2023): Commemorates the ascension of Jesus. Appropriate Bible readings are read.";--18
		"";--19
		"* Armed Forces Day (2023): A day to commemorate the nation's armed forces. \n * Emancipation Day: Marks the day the Emancipation Proclamation in Florida.";--20
		"* Armed Forces Day (2022): A day to commemorate the nation's armed forces.";--21
		"* National Maritime Day: Recognizes the maritime industry. Marks the day that the steamship Savannah left Savannah, Georgia for the first steam-powered transoceanic voyage.";--22
		"* Minor Rogation Day (2022): Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common.";--23
		"* Minor Rogation Day (2022): Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common.";--24
		"* National Tap Dance Day: Commemorates the importance of tap dancing on American culture. \n * National Missing Children's Day: Commemorates missing children and the sad fact that the practice of abduction still occurs. \n * Minor Rogation Day (2022): Psalms 103 and 104 are read and prayers for a plentiful harvest and other forms of commerce are done. Fasting is common. A vigil for the next day is generally taken.";--25
		"* Ascension Thursday (2022): Commemorates the ascension of Jesus. Appropriate Bible readings are read.";--26
		"";--27
		"* Pentecost (2023): A day celebrating the descent of the Holy Spirit upon the 12 Apostles as recorded in Acts. Red is an important color and special prayer is done.";--28
		"* Pentecost Monday (2023): An extension of Pentecost celebrations. \n * Memorial Day (2023): A day to remember all fallen soldiers etc. Many people gather families and have cookouts in honor of the soldiers. Poppies are sometimes worn.";--29
		"* Memorial Day (2022): A day to remember all fallen soldiers etc. Many people gather families and have cookouts in honor of the soldiers. Poppies are sometimes worn.";--30
		"* Ember Day 1 Quarter 2 (2023): Fasting and prayer are specially done on the Ember Days.";--31
		------------------------JUNE-------------------------------
		"* Ember Day 2 Quarter 2 (2023): Fasting and prayer are specially done on the Ember Days.";--1
		"* Ember Day 3 Quarter 2 (2023): Fasting and prayer are specially done on the Ember Days.";--2
		"";--3
		"* Trinity Sunday (2023): A day for the Holy Trinity: Father, Son, and Holy Spirit. Appropriate Bible passages are read.";--4
		"* Pentecost (2022): A day celebrating the descent of the Holy Spirit upon the 12 Apostles as recorded in Acts. Red is an important color and special prayer is done.";--5
		"* Pentecost Monday (2022): An extension of Pentecost celebrations.";--6
		"";--7
		"* Ember Day 1 Quarter 2 (2022): Fasting and prayer are specially done on the Ember Days.";--8
		"* Ember Day 2 Quarter 2 (2022): Fasting and prayer are specially done on the Ember Days.";--9
		"* Ember Day 3 Quarter 2 (2022): Fasting and prayer are specially done on the Ember Days.";--10
		"* Nyūbai: The first day of tsuyu. Preparations for the rainy season are done, such as rice planting.";--11
		"* Trinity Sunday (2022): A day for the Holy Trinity: Father, Son, and Holy Spirit. Appropriate Bible passages are read.";--12
		"";--13
		"* Flag Day: Commemorates the adoption of the American flag. The Pledge of Allegiance and the national anthem are often sung.";--14
		"";--15
		"";--16
		"";--17
		"* Father's Day (2023): A day for commemorating fathers in the United States. Cards are often given.";--18
		"* Juneteenth: National observation of emancipation. Cookouts, parties, and Emancipation Proclamation readings are common. \n * Father's Day (2022): A day for commemorating fathers in the United States. Cards are often given.";--19
		"";--20
		"* Summer Solstice: Traditionally midsummer in Europ, the beginning of summer in subtropical areas like most of the US and Japan. Celebrations include dancing and bonfires.";--21
		"";--22
		"";--23
		"";--24
		"* National Catfish Day: The value of farm-raised catfish is recognized.";--25
		"";--26
		"* Helen Keller Day: Commemorating activist Hellen Keller.";--27
		"";--28
		"";--29
		"";--30
		----------------------JULY-------------------------------
		"";--1
		"* Hangeshō: The traditional last seed-sowing day. After this day, farmers take the days off from the 3rd to Tanabata. A folk tale says that vegetables should not be eaten on this day, especially if they were harvested on this day.";--2
		"* Beginning of dog days: The beginning of the hottest and most miserable days of summer.";--3
		"* Independence Day: Patriotic songs are sung, cookouts happen, and fireworks are fired at night. Everything is red, white, and blue.";--4
		"";--5
		"";--6
		"* Tanabata: Literally seven evening, very colorful decorations are hung, and the Tanabata song is sung. Wishes on small pieces of paper are hung on this day.";--7
		"No holiday today, but the Tanabata wishes are burned on this day.";--8
		"";--9
		"";--10
		"* Free Slurpee Day: A day on which popular convenience store 7-Eleven gives out free slurpees, because the date (7/11) is the same as the company name.";--11
		"";--12
		"";--13
		"";--14
		"* Chūgen: A more secular version of O-bon. Gifts are given on this day and food is eaten with family and sometimes friends.";--15
		"* Marine Day (2023): A day for realizing the importance of the ocean around Japan. It is common to go to the beach on or near this day.";--16
		"* Marine Day (2022): A day for realizing the importance of the ocean around Japan. It is common to go to the beach on or near this day.";--17
		"";--18
		"";--19
		"* Natsu no doyō: Japan's midsummer, which is more accurate in respect to the climate. It is customary to eat eel and ankoro mochi on this day.";--20
		"";--21
		"";--22
		"* Parents' Day (2023): A day to commemorate parents.";--23
		"* Parent's Day (2022): A day to commemorate parents.";--24
		"";--25
		"";--26
		"";--27
		"";--28
		"";--29
		"";--30
		"";--31
		-----------------AUGUST--------------------------------
		"";--1
		"";--2
		"";--3
		"* Coast Guard Day: Commemorates the founding of the United States Coast Guard.";--4
		"";--5
		"* Friendship Day (2023): A day for celebrating friendship. Generally, greetings and tokens of friendship are exchanged.";--6
		"* Friendship Day (2022): A day for celebrating friendship. Generally, greetings and tokens of friendship are exchanged.";--7
		"* International Cat Day: A day for remembering cats and their contributions for society.";--8
		"";--9
		"";--10
		"* Mountain Day: A day to celebrate the Japanese mountains. \n * End of dog days: The hottest and most miserable days of summer end.";--11
		"";--12
		"";--13
		"";--14
		"";--15
		"";--16
		"";--17
		"";--18
		"* National Aviation Day: A day to reflect on the importance of aviation on society,";--19
		"";--20
		"";--21
		"";--22
		"";--23
		"";--24
		"";--25
		"* Women's Equality Day: A day commemorating the adoption of the Nineteenth Amendment.";--26
		"";--27
		"";--28
		"";--29
		"";--30
		"";--31
		-------------SEPTEMBER-------------------------------
		"* Disaster Prevention Day: Bringing public awareness to disasters throughout Japan and elsewhere. \* Nihyaku tōka: 210 days after Risshun. Said to frequently be a typhoon-rich day or a windy day.";--1
		"";--2
		"";--3
		"* Labor Day (2023): A day respecting the laborers of the USA. Almost always a day off from work and school.";--4
		"* Labor Day (2022): A day respecting the laborers of the USA. Almost always a day off from work and school.";--5
		"";--6
		"";--7
		"";--8
		"* Double Nine Festival (Kiku no sekku): A holiday dedicated to chrysanthemums. Wishing for longevity, climbing hills or mountains, and eating things with chestnuts, as well as chrysanthemum flavored items, is traditional.";--9
		"* Grandparents' Day (2023): A day dedicated to grandparents. Giving flowers to grandparents is traditional. \n * Tsukimi begins (2022): The season of Tsukimi, or watching the harvest moon, begins. Sweet potatoes and mochi are commonly eaten.";--10
		"* Patriot Day: A day asking Americans to band together and honor their home country. \n * Grandparents' Day (2022): A day dedicated to grandparents. Giving flowers to grandparents is traditional \n * Nihyaku hatsuka: Beginning of the most likely typhoon/hurricane season.";--11
		"";--12
		"* Programmers' Day: A day honoring programmers and programming. \n * Tsukimi ends (2022): End of the moon-viewing period Tsukimi. \n * Ember Day 1 Quarter 3 (2023): Fasting and prayer are specially done on the Ember Days.";--13
		"* Holy Cross Day: Comemmorates the cross used to crucify Jesus. \n * Ember Day 1 Quarter 3 (2022): Fasting and prayer are specially done on the Ember Days. \n * Ember Day 2 Quarter 3 (2023): Fasting and prayer are specially done on the Ember Days.";--14
		"* POW/MIA Recognition Day (2023): Observance commemorating POWs and those MIA. \n * Ember Day 2 Quarter 3 (2022): Fasting and prayer are specially done on the Ember Days. \n * Ember Day 3 Quarter 3 (2023): Fasting and prayer are specially done on the Ember Days.";--15
		"* POW/MIA Recognition Day (2022): Observance commemorating POWs and those MIA.  \n * Constitution Day (2022): A day commemorating the Constitution of the USA. \n * Ember Day 3 Quarter 3 (2022): Fasting and prayer are specially done on the Ember Days.";--16
		"";--17
		"* Respect for the Aged Day (2023): A day to help elderly people. Making meals for elderly people and visiting them in general is common on this day. \n * Constitution Day (2023): A day commemorating the Constitution of the USA.";--18
		"* Respect for the Aged Day (2022): A day to help elderly people. Making meals for elderly people and visiting them in general is common on this day.";--19
		"";--20
		"";--21
		"* Fall equinox (Shubun no Hi): Ohagi, a form of botamochi, is eaten for several days around this time, and people spend lots of time outside in the nice weather.";--22
		"";--23
		"";--24
		"";--25
		"* National Good Neighbor Day: A day to be a good neighbor and recognize strong leaders.";--26
		"";--27
		"";--28
		"* Tsukimi begins (2023): The season of Tsukimi, or watching the harvest moon, begins. Sweet potatoes and mochi are commonly eaten.";--29
		"";--30
		------------OCTOBER--------------------------
		"";--1
		"* Tsukimi ends (2023): End of the moon-viewing period Tsukimi.";--2
		"";--3
		"* World Space Week Begins: A week commemorating space and space exploration begins.";--4
		"";--5
		"* German-American Day: A day to commemorate German-Americans and celebrate German culture.";--6
		"";--7
		"";--8
		"* Leif Erikson Day: A day to remember Leif Erikson. \n * Fire Prevention Day: A day to recognize the importance of fire prevention. \n * Indigenous Peoples' Day (2023): A day to reflect on the indigenous peoples of the Americas.";--9
		"* Indigenous Peoples' Day (2022): A day to reflect on the indigenous peoples of the Americas.";--10
		"";--11
		"";--12
		"";--13
		"";--14
		"* White Cane Safety Day: A day to recognize the safety of blind people.";--15
		"";--16
		"";--17
		"";--18
		"";--19
		"";--20
		"";--21
		"";--22
		"";--23
		"* Food Day: A day to reflect on agriculture and food issues in America.";--24
		"";--25
		"";--26
		"* Navy Day: A day to commemorate the US Navy.";--27
		"";--28
		"* Oshibori Day: A commercial holiday to reflect on oshibori.";--29
		"* Mischief Night: A night to play pranks and be mischeivious on.";--30
		"* Halloween: The beginning of Allhallowtide. A day for apple bobbing, trick-or-treating, and related fall events. Candy corn and caramel apples are commonly eaten. Rarely, a vigil for All Saints' Day occurs.";--31
		--------NOVEMBER----------
		"* All Saints' Day: A day for commemorating all of the saints, even the unknown ones. Soul cakes are normally made and eaten today. \n * National Brush Day: A day for remembering to brush well after eating lots of candy at Halloween.";--1
		"* All Souls' Day: A day for remembering all deceased Christian souls. Soul cakes continue to be eaten today.";--2
		"* Culture Day: A day to do all things Japanese. Plays, food, and other cultural items are to be commemorated today.";--3
		"* National Bison Day (2023): A day to recognize the bison as an important American animal.";--4
		"* National Bison Day (2022): A day to recognize the bison as an important American animal.";--5
		"";--6
		"";--7
		"";--8
		"* World Freedom Day: A day to recognize and wish for freedom of all people around the world.";--9
		"";--10
		"* Veterans Day: A day to recognize all veterans of the armed forces. 2 minutes of silence takes place at 2:11pm EST.";--11
		"";--12
		"";--13
		"";--14
		"* National Recycling Day: A day to remember to recycle. \n * Shichi-go-san: On this day, three, five, and seven year olds of Japan go to shrines or parks to get their picture taken with kimono on, often with a bag of candy and sometimes money.";--15
		"";--16
		"";--17
		"";--18
		"";--19
		"* Stir-up Sunday (2022): A day to make Christmas puddings.";--20
		"* World Television Day: A day to reflect on the impact of television on the world and to watch television.";--21
		"";--22
		"* Thanksgiving (2023): A day to gather with family and eat traditional foods such as turkey, mashed potatoes, sweet potato casserole, stuffing, rolls, cranberry sauce, etc.";--23
		"* Thanksgiving (2022): A day to gather with family and eat traditional foods such as turkey, mashed potatoes, sweet potato casserole, stuffing, rolls, cranberry sauce, etc. \n * Black Friday (2023): A day when offline retailers have greatly reduced prices.";--24
		"* Black Friday (2022): A day when offline retailers have greatly reduced prices. \n * Small Business Saturday (2023): A day to remember to visit small businesses to support them.";--25
		"* Stir-up Sunday (2023): A day to make Christmas puddings. \n * Small Business Saturday (2022): A day to remember to visit small businesses to support them.";--26
		"* First Sunday of Advent (2022): The beginning of the Advent season. Christmas decorations are put up at this time, and the Advent candle is burned for the first time. \n * Cyber Monday (2023): A day when online retailers have huge sales.";--27
		"* Cyber Monday (2022): A day when online retailers have huge sales.";--28
		"";--29
		"";--30
		------------DECEMBER---------------------
		"";--1
		"";--2
		"* First Sunday of Advent (2023): The beginning of the Advent season. Christmas decorations are put up at this time, and the Advent candle is burned for the first time. \n * Mikan Day: A day to celebrate the mikan, or mandarin orange.";--3
		"* Second Sunday of Advent (2022): Readings on John the Baptist are done.";--4
		"* Second Sunday of Advent (2021): Readings on John the Baptist are done. \n * Saint Nicholas Day: People, especially children, leave shoes outside their bedroom doors, and wake up the next day to find gifts inside them placed by other people.";--5
		"";--6
		"* National Pearl Harbor Remebrance Day: Remembering the bombing of Pearl Harbor.";--7
		"";--8
		"";--9
		"* Second Sunday of Advent (2023): Readings on John the Baptist are done.";--10
		"* Third Sunday of Advent (2022): Readings on the joy of Christ are done.";--11
		"* Third Sunday of Advent (2021): Readings on the joy of Christ are done.";--12
		"";--13
		"* Monkey Day: A day to celebrate anythign to do with monkeys. \n * Ember Day 1 Quarter 4 (2022): Fasting and prayer are specially done on the Ember Days.";--14
		"* Bill of Rights Day: A day to reflect on the Bill of Rights. \n * Ember Day 1 Quarter 4 (2021): Fasting and prayer are specially done on the Ember Days. \n * Ember Day 2 Quarter 4 (2022): Fasting and prayer are specially done on the Ember Days.";--15
		"* Ember Day 2 Quarter 4 (2021): Fasting and prayer are specially done on the Ember Days. \n * Ember Day 3 Quarter 4 (2022): Fasting and prayer are specially done on the Ember Days.";--16
		"* Pan American Aviation Day: A day to recognize the importance of aviation in the Americas. \n * Third Sunday of Advent (2023): Readings on the joy of Christ are done. \n * Ember Day 3 Quarter 4 (2021): Fasting and prayer are specially done on the Ember Days.";--17
		"* Fourth Sunday of Advent (2022): Readings on Mary and Joseph before Jesus are done.";--18
		"* Fourth Sunday of Advent (2021): Readings on Mary and Joseph before Jesus are done.";--19
		"* Ember Day 1 Quarter 4 (2023): Fasting and prayer are specially done on the Ember Days.";--20
		"* Ember Day 2 Quarter 4 (2023): Fasting and prayer are specially done on the Ember Days.";--21
		"* Winter solstice (Dongzhi Festival): The beginning of winter. Hot foods like tangyuan and hot pot are eaten and a yuzu bath is taken on this day. \n * Ember Day 3 Quarter 4 (2023)";--22
		"";--23
		"* Fourth Sunday of Advent (2023): Readings on Mary and Joseph before Jesus are done. \n * Christmas Eve: A dark, candlelit dinner is sometimes eaten. Some people hold a partial vigil, until midnight, so that they may pray at midnight on Christmas. Certain Bible verses, such as Isaiah 9:2-7, Psalm 96, Titus 2:11-14, and Luke 2:1-20 are sometimes read.";--24
		"* Christmas Day (First Day of Christmas): Comemmorates the birth of Jesus. Some people attend church services. Some people watch pantomimes or Nativity plays, and music, Christmas dinner, and gifts are all enjoyed. Cards are also often given sometime around this time. Certain Bible verses are sometimes read, such as Isaiah 52:7-10, Psalm 98, Hebrews 1:1-12, and John 1:1-14. This day marks the beginning of Christmastide.";--25
		"* Second Day of Christmas: Also known as Boxing Day. Many people shop and donate to the poor. Certain Bible verses are sometimes read, such as 2 Chronicles 24:17-22, Psalm 17:1-9, 15, Acts 6:8-7:2a, 51-60, and Matthew 23:34-39.";--26
		"* Third Day of Christmas: Certain Bible verses are sometimes read, such as Genesis 1:1-5, 26-31, Psalm 116:12-19, 1 John 1:1-2:2, and John 21:20-25.";--27
		"* Fourth Day of Christmas: Certain Bible verses are sometimes read, such as Jeremiah 31:15-17, Psalm 124, 1 Peter 4:12-19, and Matthew 2:13-18.";--28
		"* Fifth Day of Christmas: Certain Bible verses are sometimes read, such as 1 Chronicles 28:1-10, 1 Corinthians 3:10-17, and Psalm 147:12-20.";--29
		"* Sixth Day of Christmas: Certain Bible verses are sometimes read, such as 1 Samuel 2:18-20, 26, Psalm 148, Colossians 3:12-17, and Luke 2:41-52.";--30
		"* Seventh Day of Christmas: Certain Bible verses are sometimes read, such as Ecclesiastes 3:1-13, psalm 8, Revelation 21:1-6a, and Matthew 25:31-46. \n * New Years Eve (Omisoka): A watchnight service, held at night on this day and sometimes going into the morning of the next day, is sometimes held. People light fireworks and watch ball drops at midnight. Bathing soon before midnight is common, and families gather together one last time at around 11pm to eat toshikoshi soba. People may also watch New year's Eve specials on TV. People almost always either stay up until midnight, or stay up for the entire night and fall asleep on the night of January 1st. Drinking o-toso or similar is popular at midnight or just after it."--31
	}
	if yr ~= 24 and yr ~= 28 and yr ~= 32 then
		day.Text = tableOfDays[yday]
	end
end)
