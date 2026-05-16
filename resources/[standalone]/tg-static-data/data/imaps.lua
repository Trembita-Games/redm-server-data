-- IMAP static data.
--
-- IMAPs are map and world chunks that can be requested or removed.
-- They are used to control static world variants such as completed buildings,
-- construction stages, boarded windows, terrain patches, and town props.
--
-- Requesting or removing the wrong combination can cause visual conflicts,
-- so test every changed location in-game.

TGStaticData = TGStaticData or {}

TGStaticData.RequestImaps = {
    {
        name = 'Barrels Everywhere?',
        imap = -661560211,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Structure in front of gunsmith?',
        imap = -1933617196,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Leatherworker on west side of encampment',
        imap = -892659042,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Structure in front of motel?',
        imap = -1588793465,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Chair in front of Law Offices',
        imap = 1186533019,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Structure in front of Law Offices',
        imap = -156313117,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Green Building and General Store Boarded up?',
        imap = 56708243,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Saloon Boarded Up??',
        imap = 1136898294,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Water Trough?',
        imap = 30201771,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Fencing at farm',
        imap = -1475403379,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Prison Break?',
        imap = 696143352,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'something regarding the saloon and store?',
        imap = 897455211,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Crates outside saloon and gen store?',
        imap = 1285430299,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'General Store - Fruit in front?',
        imap = 1573766063,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Something regarding the general store',
        imap = -554932707,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Valentine Sheriffs Office Outer wall',
        imap = 1097534152,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Valentine -- Green Building and Restaurant mainstreet - Painted, completed stage. Keane\'s Rooms for Rent -- https://gyazo.com/b8f9f77bb52aeb37aac6dd21463a2133 (Do Not Load Both(2/2))',
        imap = 903666582,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Valentine -- Green Building Lamp',
        imap = 637874199,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Green House Valentine -- Exterior Trees and Flowers 1(Run 1 and 2 together)',
        imap = -1521525254,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Green House Valentine -- Exterior Trees and Flowers 2(Run 1 and 2 together)',
        imap = -761186147,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Law offices (REMOVE FOR structural damage)',
        imap = 924412185,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Valentine -- Main Street Saloon Sign in front',
        imap = -1158072415,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Valentine -- Sign in front of General Store',
        imap = 135886022,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Track Bed - Full Legnth',
        imap = 2077623691,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Crossing 1818',
        imap = -555736180,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 1 1875',
        imap = -693812694,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 2 Track at 2070',
        imap = -1386614896,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 3 2156',
        imap = 2080640229,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 4 2177',
        imap = -805522215,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 5',
        imap = 499044444,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 6 2184',
        imap = -196117122,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 7 2201',
        imap = -1022518533,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 8 with bridge 2203',
        imap = 691955519,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Section 9 2229.82',
        imap = -142900294,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Oil Pipe',
        imap = -657241692,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Oil Tower',
        imap = -1112373128,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers - Barn interior, lanterns and doors',
        imap = 1353861354,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers Barn exterior and fencing',
        imap = -956131204,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers border fencing',
        imap = 578474998,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Gazebo',
        imap = -1860722801,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers interior',
        imap = 931647489,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers Interior',
        imap = 1467774743,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Completed exterior',
        imap = 411742897,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'clothes line, wagon wheel,',
        imap = 349494711,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 2087181890',
        imap = 2087181890,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1757739778',
        imap = 1757739778,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2029237844',
        imap = -2029237844,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2000794023',
        imap = -2000794023,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -531137142',
        imap = -531137142,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 5422464',
        imap = 5422464,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Silo completed',
        imap = -218940381,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Outhouse',
        imap = 1236917971,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'firepit seating',
        imap = -918785150,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Worn Brown Ground 670 -1236 44',
        imap = -61896664,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Version 1 of Grass and Ferns',
        imap = -648893593,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Version 2 of Grass and Ferns',
        imap = 1534006738,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Version 3 of Grass and Ferns',
        imap = -376056363,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Version 4 of Grass and Ferns',
        imap = 519091847,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Adds bush to 692 -1263 44',
        imap = -1225606266,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Lots of ferns, weeds and tall grass',
        imap = -1874720370,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Grass, Flowers and weeds]]',
        imap = -1936937394,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blue Trash Barrels on Beach',
        imap = 810684093,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Broken Table on Beach',
        imap = 321594819,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blue Trash Barrels on Beach',
        imap = -385999832,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Covers Large hole with grass patch',
        imap = -1366431554,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Covers small plot hole with mound of dirt',
        imap = -2144587490,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Brathwaite House Shell',
        imap = 1149195254,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Interior',
        imap = 58066174,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Add Open Shudders Upstairs Bed Room and Downstairs Library',
        imap = 1944013855,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Front Balcony Lantern Added',
        imap = -880373663,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Adds Working tools and supplies to upper balcony',
        imap = -70021332,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Normal Barn Frame',
        imap = -677977650,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Barn Interior',
        imap = 702350293,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Adds Field Props',
        imap = 1426715569,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Normal Fields',
        imap = 26815048,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Green Plants',
        imap = -1229109520,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1641449717',
        imap = 1641449717,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'something',
        imap = 1258244391,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction',
        imap = -501793326,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'crates on main st',
        imap = 1490756544,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'trapper',
        imap = -753454183,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'trapper',
        imap = -1854368742,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 466168676',
        imap = 466168676,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 411846009',
        imap = 411846009,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -393583941',
        imap = -393583941,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -636161219',
        imap = -636161219,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'grave',
        imap = -518004776,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'something in cemetary',
        imap = -562289114,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Ground After Snowfall Winter',
        imap = -1331012521,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Fire in Pit',
        imap = -743781837,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Fire Pit',
        imap = 2114706334,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Exterior House',
        imap = -338553155,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Normal Looking Interior',
        imap = -1636879249,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Adds Wagon Wheel near Front Door',
        imap = -1106668087,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Cash Box Interior',
        imap = 2028590076,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Doctors House Interior and Unlocked Front Door',
        imap = 131323483,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Micahs Gun House Interior with Unlocked Front Door (Upstairs does not work, other doors are locked)',
        imap = -130638369,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Jail Cell Window Fixed',
        imap = 2137790641,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Jail Cell Window Fixed',
        imap = 1934919499,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Jail Cell Window Fixed',
        imap = -515396642,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'full interior with doors',
        imap = 619024057,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'boat shell',
        imap = -614421509,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'upstairs interior',
        imap = 604920544,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'main room interior',
        imap = 1382135686,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'railings',
        imap = -1968130469,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'railings',
        imap = -276259505,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Tent in Wapiti',
        imap = 1003623269,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'tent 441.39, 2228.66, 248.03',
        imap = 1638937672,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'something to do with tent in wapiti 441.39, 2228.66, 248.03',
        imap = 739805687,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'tent flap open',
        imap = 795060201,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'something',
        imap = -395621323,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'something',
        imap = -198004806,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'flame in tent 448.51, 2210.93, 246.08',
        imap = -924329535,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -723094901',
        imap = -723094901,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'beechers field side rows of some medium crop',
        imap = 1929454697,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'beechers field side rows of some small crop',
        imap = 1649902358,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'beechers field crops in middle',
        imap = 1864768904,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'beechers field crops in middle',
        imap = 938290967,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'beechers field hole in ground fix',
        imap = -1253110600,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1861460906',
        imap = 1861460906,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'ground',
        imap = -262959893,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'farm im norden stall',
        imap = 1271713904,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'farm im norden stall',
        imap = 1423681694,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1293624693',
        imap = 1293624693,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Schield',
        imap = -1305406402,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1983816160',
        imap = 1983816160,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -602816690',
        imap = -602816690,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 636278554',
        imap = 636278554,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'schmiede',
        imap = -285245562,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'tore',
        imap = 1031662866,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1041976064',
        imap = -1041976064,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1221694281',
        imap = 1221694281,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1036815507',
        imap = 1036815507,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 775893260',
        imap = 775893260,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -329355129',
        imap = -329355129,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'fence',
        imap = 2117211184,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'barn interior',
        imap = -1042390616,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'signs on building 1',
        imap = -1667265438,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'fantana theatre interior',
        imap = -898081380,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'sign option 8 (advertisement)',
        imap = -1267247536,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Cellar doors',
        imap = 350100475,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'fixed hole in wall',
        imap = -274080837,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -787042507',
        imap = -787042507,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1696865897',
        imap = -1696865897,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'shell',
        imap = -1387511711,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'interior',
        imap = 1901132483,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'sign outside tent version 4',
        imap = -1617847332,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'house shell/front enterence',
        imap = -574996782,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'house interior',
        imap = 1169511062,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'fence border and wood pile outside house',
        imap = -1266106154,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'ground trail to house',
        imap = -1377975054,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'bounty board',
        imap = 886997475,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'big old sign gunshop',
        imap = 1936501508,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'debris and remodle next to liqour',
        imap = 610256856,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'barrels on sheriff step',
        imap = 1804593020,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'bench infront of gunshop',
        imap = -1905652203,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'box and stool next to gun shop',
        imap = 2470511,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1005727867',
        imap = -1005727867,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1929440211',
        imap = 1929440211,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'bau haus valentine',
        imap = -590227673,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Guma Tower',
        imap = -279703229,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 706203603',
        imap = 706203603,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Camp',
        imap = -1226654727,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'camp fluss',
        imap = -313259746,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'camp fluss',
        imap = -367168072,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1991621063',
        imap = 1991621063,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'hexenzirkel',
        imap = 1145227353,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1527084472',
        imap = 1527084472,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'zug sd',
        imap = 1946327170,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 976641588',
        imap = 976641588,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -593457329',
        imap = -593457329,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1262164851',
        imap = 1262164851,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 536919806',
        imap = 536919806,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -724913398',
        imap = -724913398,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'mary haus',
        imap = -37875204,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'mary haus',
        imap = 258104717,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'l haupt haus',
        imap = 1274804496,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'l haupt haus',
        imap = 1597665303,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2133417899',
        imap = -2133417899,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lynnfarm',
        imap = -943891161,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1809571159',
        imap = -1809571159,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1625703283',
        imap = -1625703283,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1517736440',
        imap = 1517736440,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1509154451',
        imap = -1509154451,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -693132475',
        imap = -693132475,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1369880946',
        imap = -1369880946,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 539566709',
        imap = 539566709,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1081335485',
        imap = -1081335485,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -445068262',
        imap = -445068262,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1299817544',
        imap = 1299817544,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 66523468',
        imap = 66523468,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 124787444',
        imap = 124787444,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1598834669',
        imap = 1598834669,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 966418260',
        imap = 966418260,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1947806010',
        imap = 1947806010,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1749008611',
        imap = 1749008611,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -630275010',
        imap = -630275010,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 458453080',
        imap = 458453080,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 281153830',
        imap = 281153830,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 42081460',
        imap = 42081460,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -90108678',
        imap = -90108678,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2122914678',
        imap = -2122914678,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Bau Valentine',
        imap = 1471226731,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 765141292',
        imap = 765141292,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1305415261',
        imap = 1305415261,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 173790065',
        imap = 173790065,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 135028740',
        imap = 135028740,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1372565859',
        imap = 1372565859,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1111220101',
        imap = 1111220101,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -688011628',
        imap = -688011628,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 188985281',
        imap = 188985281,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Rodes Bank',
        imap = -886310806,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'alte kirche',
        imap = 1335714585,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 834697453',
        imap = 834697453,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1253364275',
        imap = 1253364275,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1310914542',
        imap = -1310914542,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1023331176',
        imap = -1023331176,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -276524767',
        imap = -276524767,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'camp fluss',
        imap = -166639526,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 2107657444',
        imap = 2107657444,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1812712970',
        imap = 1812712970,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 787163418',
        imap = 787163418,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -661825463',
        imap = -661825463,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1603294144',
        imap = 1603294144,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1036501021',
        imap = -1036501021,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 869642051',
        imap = 869642051,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -184821200',
        imap = -184821200,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1700234797',
        imap = 1700234797,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1377139506',
        imap = -1377139506,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Rodes neues Haus',
        imap = -1276109918,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Rodes neues Haus',
        imap = -1386423483,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Rodes neues Haus',
        imap = -1405375965,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = 45121961,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = 943998860,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = 1056170594,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = -873881483,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = 881979872,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1157695860',
        imap = 1157695860,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = 1859948183,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Boad',
        imap = -1688366042,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 149553684',
        imap = 149553684,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'SD Bank Wand',
        imap = 1017355491,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -920505696',
        imap = -920505696,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1628286919',
        imap = 1628286919,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -704461521',
        imap = -704461521,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1725465949',
        imap = -1725465949,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1490034522',
        imap = -1490034522,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1136457806',
        imap = 1136457806,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1871261290',
        imap = 1871261290,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1659037747',
        imap = 1659037747,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 165972019',
        imap = 165972019,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -483649675',
        imap = -483649675,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1512794226',
        imap = -1512794226,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 146172383',
        imap = 146172383,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1417317522',
        imap = 1417317522,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'zug SD',
        imap = 1284188544,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1986089134',
        imap = -1986089134,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 913995529',
        imap = 913995529,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1737485501',
        imap = -1737485501,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Wste grab',
        imap = 1713084298,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Wste grab',
        imap = 928528900,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2071756699',
        imap = -2071756699,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'minen camp wste',
        imap = 2094371528,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 192248329',
        imap = 192248329,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 483041556',
        imap = 483041556,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 207032563',
        imap = 207032563,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1984361543',
        imap = -1984361543,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -487373767',
        imap = -487373767,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 227706189',
        imap = 227706189,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1403908542',
        imap = -1403908542,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1792518688',
        imap = -1792518688,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 82084523',
        imap = 82084523,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2116397290',
        imap = -2116397290,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1524580507',
        imap = 1524580507,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 1289178060',
        imap = 1289178060,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -947895270',
        imap = -947895270,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -1892843345,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 366542865,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 241205019,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -946313953,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -889100155,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Rodes neues Haus',
        imap = -559257162,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Rodes neues Haus',
        imap = 979670262,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -1452136643,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -744260705,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 1060557512,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -362403544,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = -592147003,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 352816221,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 1128622296,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Baumwollfeld',
        imap = 979982112,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 1756640181,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 1557076971,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'guv feld',
        imap = 1913538153,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'china markt',
        imap = 1978008114,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 295117400',
        imap = 295117400,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'knast fenster',
        imap = 728046625,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 124419381',
        imap = 124419381,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Tree\'s all around Blackwater',
        imap = -1906713208,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Grass around Construction by Foreman Building',
        imap = -1631536545,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- City Hall & Docks Model Textures and Detail',
        imap = -843384101,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Adds Town Hall Pre-Construcion Ground (Ground does not mesh well with contrustion IPLs)',
        imap = 1470738186,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Adds Trees and Grass (DO NOT USE WITH CONSTRUCTION IPL, WILL MERGE VISUALS)',
        imap = -1632348233,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Moonshine shell MP006_A3SUPP_MOONSHINE01',
        imap = 'MP006_A3SUPP_MOONSHINE01',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A3SUPP_MOONSHINE01_PLUG',
        imap = 'MP006_A3SUPP_MOONSHINE01_PLUG',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A2SUPP_MOONSHINE02',
        imap = 'MP006_A2SUPP_MOONSHINE02',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A2SUPP_MOONSHINE02_PLUG',
        imap = 'MP006_A2SUPP_MOONSHINE02_PLUG',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A4SUPP_MOONSHINE03',
        imap = 'MP006_A4SUPP_MOONSHINE03',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A4SUPP_MOONSHINE03_PLUG',
        imap = 'MP006_A4SUPP_MOONSHINE03_PLUG',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A1SUPP_MOONSHINE04',
        imap = 'MP006_A1SUPP_MOONSHINE04',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A1SUPP_MOONSHINE04_PLUG',
        imap = 'MP006_A1SUPP_MOONSHINE04_PLUG',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A4SUPP_MOONSHINE05',
        imap = 'MP006_A4SUPP_MOONSHINE05',
        notes = 'Moonshine shell static data.',
    },
    {
        name = 'Moonshine shell MP006_A4SUPP_MOONSHINE05_PLUG',
        imap = 'MP006_A4SUPP_MOONSHINE05_PLUG',
        notes = 'Moonshine shell static data.',
    },
}

TGStaticData.RemoveImaps = {
    {
        name = 'removes white smoke in st denis next to the station',
        imap = -928815382,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Valentine Sheriff\'s Office Crumbled Wall parts...',
        imap = 774477221,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Grass on grave Valentine cemetery',
        imap = -391187090,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'dirt pile from grave dug Valentine cemetery',
        imap = -1902184438,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'pre-grave dug grass over',
        imap = 1886602884,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'dirt pile from grave dug Valentine cemetery',
        imap = 740012805,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'dirt pile from grave dug Valentine cemetery',
        imap = 1236921921,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'pre-grave grass... if graves present, remove',
        imap = 1963724330,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Coffin in left grave, Valentine',
        imap = -1871745961,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Coffin in center grave, Valentine',
        imap = 2125514970,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Coffin in right grave, Valentine',
        imap = 267578156,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Run Down Closed Station',
        imap = -84516711,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers Barn - Work supplies',
        imap = 611701601,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers Barn - Work supplies',
        imap = 901412334,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers Barn - Work supplies',
        imap = 703356498,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers Barn - Work supplies',
        imap = -650822431,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 2006257967',
        imap = 2006257967,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2008632686',
        imap = -2008632686,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1615103170',
        imap = -1615103170,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -692583342',
        imap = -692583342,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -669282002',
        imap = -669282002,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1355464862',
        imap = -1355464862,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1141450523',
        imap = -1141450523,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -252820785',
        imap = -252820785,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 258899919',
        imap = 258899919,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -767883927',
        imap = -767883927,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Scaffolding // remove when completed',
        imap = -535715562,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Construction materials',
        imap = 2030594491,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -790660125',
        imap = -790660125,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies',
        imap = 33260939,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies',
        imap = 780653384,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies',
        imap = 180676027,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies',
        imap = -270212770,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies',
        imap = -211623797,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies',
        imap = 862349416,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Beechers construction supplies -- Roof going on',
        imap = 699225334,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'crate on deck by window',
        imap = -706105482,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'old windows from previous shack',
        imap = 176369335,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 637627640',
        imap = 637627640,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'support beam - construction',
        imap = 44077654,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'support beam - construction',
        imap = 839872819,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'support beam - construction',
        imap = -1656895602,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -583969090',
        imap = -583969090,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -364121869',
        imap = -364121869,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1073832871',
        imap = -1073832871,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1786558629',
        imap = -1786558629,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1548753996',
        imap = -1548753996,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1784133719',
        imap = -1784133719,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1667461262',
        imap = -1667461262,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Silo construction materials',
        imap = 203845253,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Silo construction base and materials',
        imap = -1658679165,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Silo construction base and materials',
        imap = 258733332,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Silo construction base and materials',
        imap = 79028136,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'chairs and construction supplies',
        imap = 634752926,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'chairs and construction supplies',
        imap = 984271748,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 43335376',
        imap = 43335376,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'green wagon side of house/clipping -- full of bricks',
        imap = 1444950942,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'green wagon side of house/clipping -- full of bricks',
        imap = 910783469,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'green wagon front of house/clipping -- full of bricks',
        imap = 727408145,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'pile of wood north side of house -- construction materials',
        imap = 429636242,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'pile of wood north side of house -- construction materials',
        imap = -19364596,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'green wagon side of house/clipping -- full of bricks',
        imap = 2131035495,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction materials',
        imap = -316448350,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction materials',
        imap = -496874464,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction materials',
        imap = -794515291,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction materials',
        imap = 275588949,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction materials',
        imap = -52330434,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'construction materials',
        imap = -2131457946,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'interior framing -- construction',
        imap = 1819926822,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'interior framing -- construction',
        imap = 1529593482,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'framing, remove when exterior is up.',
        imap = -668911501,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'old structure',
        imap = -1012618146,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'old structure rubble',
        imap = 2111816145,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'old structure',
        imap = -722030448,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'canvas gazebos',
        imap = -974480336,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'canvas gazebo north, wagon, and supplies',
        imap = 197447134,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'wagon wreckage in cropfield',
        imap = 1256771838,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lumber pile main driveway in',
        imap = 1205945639,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lumber pile main driveway in',
        imap = 1532774697,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'saw horse main driveway in',
        imap = -114633341,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'floating saddle, hat, and rope in corral',
        imap = -90646166,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'pile of old lumber',
        imap = 1681117196,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'fire behind house',
        imap = -803019223,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lantern',
        imap = 449426161,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lantern',
        imap = -999913940,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lantern',
        imap = -30541382,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'lantern',
        imap = -960328988,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP 247969883',
        imap = 247969883,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -1798259416',
        imap = -1798259416,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'IMAP -2093605706',
        imap = -2093605706,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Lone Rock? next to Foremans building LOD',
        imap = -1675593451,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Ground',
        imap = -2082201137,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Addons Construction',
        imap = 1343343014,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- General Clutter at the Docks',
        imap = 739412171,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Bank Under Construction',
        imap = -5339556,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Bank Under Construction Occlusion',
        imap = 1258244391,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Grass on Right side of City Hall',
        imap = 1649548630,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Tents Beside City Hall Near Trech',
        imap = 1173561253,
        notes = 'Imported from static data reference.',
    },
    {
        name = 'Blackwater -- Town Hall -- Grass along path near tents',
        imap = 1641449717,
        notes = 'Imported from static data reference.',
    },
}
