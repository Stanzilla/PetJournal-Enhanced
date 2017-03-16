local PetJournalEnhanced = LibStub("AceAddon-3.0"):GetAddon("PetJournalEnhanced")
local zoneIDs = PetJournalEnhanced:NewModule("ZoneIDs")

zoneIDs.continents = {
    -- Kalimdor
    [1] = {
        772, --	Ahn'Qiraj: The Fallen Kingdom
        894, --	Ammen Vale MoP
        43, --	Ashenvale
        181, --	Azshara
        464, --	Azuremyst Isle
        476, --	Bloodmyst Isle
        890, --	Camp Narache MoP
        42, --	Darkshore
        381, --	Darnassus
        101, --	Desolace
        4, --	Durotar
        141, --	Dustwallow Marsh
        891, --	Echo Isles MoP
        182, --	Felwood
        121, --	Feralas
        795, --	Molten Front
        241, --	Moonglade
        606, --	Mount Hyjal
        9, -- Mulgore
        11, --	Northern Barrens
        321, --	Orgrimmar
        888, --	Shadowglen MoP
        261, --	Silithus
        607, --	Southern Barrens
        81, --	Stonetalon Mountains
        161, --	Tanaris
        41, --	Teldrassil
        471, --	The Exodar
        61, --	Thousand Needles
        362, --	Thunder Bluff
        720, --	Uldum
        201, --	Un'Goro Crater
        889, --	Valley of Trials MoP
        281, --	Winterspring
    },
    -- Eastern Kingdoms
    [2] = {
        614, --	Abyssal Depths
        16, --	Arathi Highlands
        17, --	Badlands
        19, --	Blasted Lands
        29, --	Burning Steppes
        866, --	Coldridge Valley MoP
        32, --	Deadwind Pass
        892, --	Deathknell MoP
        27, --	Dun Morogh
        34, --	Duskwood
        23, --	Eastern Plaguelands
        30, --	Elwynn Forest
        462, --	Eversong Woods
        463, --	Ghostlands
        545, --	Gilneas
        611, --	Gilneas City
        24, --	Hillsbrad Foothills
        341, --	Ironforge
        499, --	Isle of Quel'Danas
        610, --	Kelp'thar Forest
        35, --	Loch Modan
        895, --	New Tinkertown MoP
        37, --	Northern Stranglethorn
        864, --	Northshire MoP
        36, --	Redridge Mountains
        684, --	Ruins of Gilneas
        685, --	Ruins of Gilneas City
        28, --	Searing Gorge
        615, --	Shimmering Expanse
        480, --	Silvermoon City
        21, --	Silverpine Forest
        301, --	Stormwind City
        689, --	Stranglethorn Vale
        893, --	Sunstrider Isle MoP
        38, --	Swamp of Sorrows
        673, --	The Cape of Stranglethorn
        26, --	The Hinterlands
        502, --	The Scarlet Enclave
        20, --	Tirisfal Glades
        708, --	Tol Barad
        709, --	Tol Barad Peninsula
        700, --	Twilight Highlands
        382, --	Undercity
        613, --	Vashj'ir
        22, --	Western Plaguelands
        39, --	Westfall
        40, --	Wetlands
    },
    --	Outland
    [3] = {
        475, --	Blade's Edge Mountains
        465, --	Hellfire Peninsula
        477, --	Nagrand
        479, --	Netherstorm
        473, --	Shadowmoon Valley
        481, --	Shattrath City
        478, --	Terokkar Forest
        467, --	Zangarmarsh
    },
    --	Northrend
    [4] = {
        485, --	Northrend
        486, --	Borean Tundra
        510, --	Crystalsong Forest
        504, --	Dalaran
        488, --	Dragonblight
        490, --	Grizzly Hills
        491, --	Howling Fjord
        541, --	Hrothgar's Landing
        492, --	Icecrown
        493, --	Sholazar Basin
        495, --	The Storm Peaks
        501, --	Wintergrasp
        496, --	Zul'Drak
    },
    --	The Maelstrom
    [5] = {
        640, --	Deepholm
        605, --	Kezan
        544, --	The Lost Isles
        737, --	The Maelstrom
        823, -- Darkmoon Island
    },
    -- Pandaria (MoP)
    [6] = {
        858, -- Dread Wastes MoP
        929, -- Isle of Giants MoP
        928, -- Isle of Thunder MoP
        857, -- Krasarang Wilds MoP
        809, -- Kun-Lai Summit MoP
        905, -- Shrine of Seven Stars MoP
        903, -- Shrine of Two Moons MoP
        806, -- The Jade Forest MoP
        873, -- The Veiled Stair MoP
        808, -- The Wandering Isle MoP
        951, -- Timeless Isle
        810, -- Townlong Steppes MoP
        811, -- Vale of Eternal Blossoms MoP
        807, -- Valley of the Four Winds MoP
    },
    -- Draenor
    [7] = {
        978, --	Ashran
        941, --	Frostfire Ridge
        976, --	Frostwall
        949, --	Gorgrond
        971, --	Lunarfall
        950, --	Nagrand
        947, --	Shadowmoon Valley
        948, --	Spires of Arak
        1009, -- Stormshield
        946, --	Talador
        945, --	Tanaan Jungle
        970, --	Tanaan Jungle - Assault on the Dark Portal
        1011, -- Warspear
    },
    -- Broken Isles
    [8] = {
        1015, -- Aszuna
        1021, -- Broken Shore
        1014, -- Dalaran
        1098, -- Eye of Azshara
        1024, -- Highmountain
        1017, -- Stormheim
        1033, -- Suramar
        1018, -- Val'sharah
    },
    -- Instances
    [9] = {
        930, -- Throne of Thunder MoP
        401, --	Alterac Valley
        461, --	Arathi Basin
        482, --	Eye of the Storm
        540, --	Isle of Conquest
        512, --	Strand of the Ancients
        736, --	The Battle for Gilneas
        626, --	Twin Peaks
        443, --	Warsong Gulch
        688, --	Blackfathom Deeps
        704, --	Blackrock Depths
        721, --	Blackrock Spire
        699, --	Dire Maul
        691, --	Gnomeregan
        750, --	Maraudon
        680, --	Ragefire Chasm
        760, --	Razorfen Downs
        761, --	Razorfen Kraul
        762, --	Scarlet Monastery
        763, --	Scholomance
        764, --	Shadowfang Keep
        765, --	Stratholme
        756, --	The Deadmines
        690, --	The Stockade
        687, --	The Temple of Atal'Hakkar
        692, --	Uldaman
        749, --	Wailing Caverns
        686, --	Zul'Farrak
        755, --	Blackwing Lair
        696, --	Molten Core
        717, --	Ruins of Ahn'Qiraj
        766, --	Temple of Ahn'Qiraj
        722, --	Auchenai Crypts
        797, --	Hellfire Ramparts
        798, --	Magisters' Terrace
        732, --	Mana-Tombs
        734, --	Old Hillsbrad Foothills
        723, --	Sethekk Halls
        724, --	Shadow Labyrinth
        731, --	The Arcatraz
        733, --	The Black Morass
        725, --	The Blood Furnace
        729, --	The Botanica
        730, --	The Mechanar
        710, --	The Shattered Halls
        728, --	The Slave Pens
        727, --	The Steamvault
        726, --	The Underbog
        796, --	Black Temple
        776, --	Gruul's Lair
        775, --	Hyjal Summit
        799, --	Karazhan
        779, --	Magtheridon's Lair
        780, --	Serpentshrine Cavern
        789, --	Sunwell Plateau
        782, --	The Eye
        522, --	Ahn'kahet: The Old Kingdom
        533, --	Azjol-Nerub
        534, --	Drak'Tharon Keep
        530, --	Gundrak
        525, --	Halls of Lightning
        603, --	Halls of Reflection
        526, --	Halls of Stone
        602, --	Pit of Saron
        521, --	The Culling of Stratholme
        601, --	The Forge of Souls
        520, --	The Nexus
        528, --	The Oculus
        536, --	The Violet Hold
        542, --	Trial of the Champion
        523, --	Utgarde Keep
        524, --	Utgarde Pinnacle
        604, --	Icecrown Citadel
        535, --	Naxxramas
        718, --	Onyxia's Lair
        527, --	The Eye of Eternity
        531, --	The Obsidian Sanctum
        609, --	The Ruby Sanctum
        543, --	Trial of the Crusader
        529, --	Ulduar
        532, --	Vault of Archavon
        753, --	Blackrock Caverns
        820, --	End Time
        757, --	Grim Batol
        759, --	Halls of Origination
        819, --	Hour of Twilight
        747, --	Lost City of the Tol'vir
        768, --	The Stonecore
        769, --	The Vortex Pinnacle
        767, --	Throne of the Tides
        816, --	Well of Eternity
        781, --	Zul'Aman
        793, --	Zul'Gurub
        752, --	Baradin Hold
        754, --	Blackwing Descent
        824, --	Dragon Soul
        800, --	Firelands
        758, --	The Bastion of Twilight
        773, --	Throne of the Four Winds
        875, --	Gate of the Setting Sun MoP
        885, --	Mogu'Shan Palace MoP
        877, --	Shado-pan Monastery MoP
        887, --	Siege of Niuzao Temple MoP
        876, --	Stormstout Brewery MoP
        867, --	Temple of the Jade Serpent MoP
        897, --	Heart of Fear MoP
        896, --	Mogu'shan Vaults MoP
        886, --	Terrace of Endless Spring MoP
        953, -- Siege of Orgrimmar
        984, --	Auchindoun
        964, --	Bloodmaul Slag Mines
        993, --	Grimrail Depot
        987, --	Iron Docks
        969, --	Shadowmoon Burial Grounds
        989, --	Skyreach
        1008, -- The Everbloom
        995, -- Upper Blackrock Spire
        994, -- Highmaul
        988, -- Blackrock Foundry
        1094, -- The Emerald Nightmare (Legion Raid)
    },
}


-- C_PetJournal.GetPetInfoBySpeciesID
zoneIDs.SpeciesToZoneId = {
    [724]={[809]=809}, -- Alpine Foxling
    [838]={[640]=640,[101]=101}, -- Amethyst Shale Hatchling
    [1155]={[766]=766}, -- Anubisath Idol
    [57]={[281]=281}, -- Azure Whelpling
    [456]={[22]=22}, -- Blighthawk
    [1600]={[1116]=1116,[1116]=1116}, -- Bone Serpent
    [1343]={[951]=951}, -- Bonkers
    [1152]={[755]=755}, -- Chrominius
    [1164]={[475]=475}, -- Cogblade Raptor
    [1232]={[780]=780}, -- Coilfang Stalker
    [1396]={[971]=971}, -- Crazy Carrot
    [1589]={[946]=946}, -- Crimsonwing Moth
    [1068]={[823]=823}, -- Crow
    [270]={[301]=301,[321]=321}, -- Dark Phoenix Hatchling
    [848]={[823]=823}, -- Darkmoon Rabbit
    [338]={[823]=823}, -- Darkmoon Tonk
    [339]={[823]=823}, -- Darkmoon Zeppelin
    [1330]={[951]=951}, -- Death Adder Hatchling
    [1205]={[929]=929}, -- Direhorn Runt
    [1167]={[493]=493}, -- Emerald Proto-Whelp
    [59]={[121]=121}, -- Emerald Whelpling
    [746]={[858]=858}, -- Emperor Crab
    [213]={[492]=492}, -- Enchanted Broom
    [519]={[947]=947,[970]=970}, -- Fel Flame
    [457]={[23]=23}, -- Festering Maggot
    [514]={[465]=465}, -- Flayer Youngling
    [1625]={[796]=796}, -- Fragment of Anger
    [834]={[858]=858}, -- Grinder
    --[1544]={[molten core (anniversary edition)]=molten core (anniversary edition)}, -- Hatespark the Tiny
    [1532]={[948]=948}, -- Ikky
    --[1387]={[blasted lands (90+)]=blasted lands (90+)}, -- Iron Starlette
    [446]={[26]=26}, -- Jade Oozeling
    [565]={[806]=806}, -- Jungle Darter
    [1166]={[809]=809}, -- Kun-Lai Runt
    [115]={[1116]=1116,[1116]=1116}, -- Land Shark
    [320]={[301]=301,[321]=321}, -- Lil' Tarecgosa
    [1227]={[799]=799}, -- Menagerie Custodian
    [500]={[182]=182}, -- Minfernal
    [557]={[121]=121}, -- Nether Faerie Dragon
    [1165]={[486]=486}, -- Nexus Whelpling
    [1125]={[811]=811}, -- Pandaren Air Spirit
    [868]={[811]=811}, -- Pandaren Water Spirit
    [743]={[858]=858}, -- Rapana Whelk
    [1042]={[807]=807}, -- Red Cricket
    [1328]={[951]=951}, -- Ruby Droplet
    [573]={[806]=806}, -- Sandy Petrel
    [1592]={[948]=948}, -- Sapphire Firefly
    [538]={[492]=492}, -- Scourged Whelpling
    [1183]={[930]=930}, -- Son of Animus
    [87]={[121]=121}, -- Sprite Darter Hatchling
    [679]={[809]=809}, -- Summit Kid
    [1178]={[928]=928}, -- Sunreaver Micro-Sentry
    [1182]={[928]=928}, -- Swamp Croaker
    [1231]={[780]=780}, -- Tainted Waveling
    [167]={[467]=467}, -- Tiny Sporebat
    [1238]={[485]=485}, -- Unborn Val'kyr
    [1154]={[766]=766}, -- Viscidus Globule
    [548]={[700]=700}, -- Wildhammer Gryphon Hatchling
    [1211]={[929]=929}, -- Zandalari Anklerender
    [1180]={[929]=929}, -- Zandalari Kneebiter
    [1185]={[929]=929}, -- Spectral Porcupette
    [190]={[510]=510}, -- Ghostly Skull
    [173]={[481]=481}, -- Snarly
    [214]={[492]=492}, -- Argent Squire
    [1624]={[796]=796}, -- Abyssius
    [1708]={[1015]=1015,[1017]=1017}, -- Albatross Chick
    --[732]={[dread wastespet battle: townlong steppes]=dread wastespet battle: townlong steppes}, -- Amber Moth
    [1465]={[949]=949}, -- Amberbarb Wasp
    [1160]={[32]=32}, -- Arcane Eye
    [558]={[495]=495}, -- Arctic Fox Kit
    [641]={[486]=486,[488]=488,[495]=495,[496]=496}, -- Arctic Hare
    [1150]={[696]=696}, -- Ashstone Core
    [1324]={[951]=951}, -- Ashwing Moth
    [1738]={[1018]=1018}, -- Auburn Ringtail
    [1470]={[949]=949}, -- Axebeak Hatchling
    [1884]={[1024]=1024}, -- Baby Elderhorn
    [706]={[807]=807}, -- Bandicoon
    [707]={[807]=807}, -- Bandicoon Kit
    [649]={[493]=493}, -- Biletoad
    [1743]={[1024]=1024,[1017]=1017}, -- Black-Footed Fox Kit
    [1915]={[1014]=1014}, -- Blind Rat
    [1468]={[970]=970}, -- Bloodbeak
    [1462]={[948]=948}, -- Bloodsting Wasp
    [1572]={[946]=946}, -- Brilliant Bloodfeather
    [1540]={[948]=948}, -- Brilliant Spore
    [449]={[475]=475,[949]=949,[26]=26}, -- Brown Marmot
    [380]={[806]=806}, -- Bucktooth Flapper
    [1726]={[1024]=1024}, -- Burrow Spiderling
    [540]={[606]=606}, -- Carrion Rat
    [1586]={[970]=970}, -- Cerulean Moth
    [742]={[858]=858}, -- Clouded Hedgehog
    [1914]={[1015]=1015,[1033]=1033}, -- Coastal Sandpiper
    [393]={[29]=29,[23]=23,[949]=949,[492]=492,[987]=987,[26]=26,[700]=700,[201]=201,[40]=40}, -- Cockroach
    [1775]={[1024]=1024}, -- Coralback Fiddler
    [1149]={[696]=696}, -- Corefire Imp
    [559]={[640]=640}, -- Crimson Geode
    [554]={[640]=640}, -- Crimson Shale Hatchling
    [745]={[858]=858}, -- Crunchy Scorpion
    [1809]={[1033]=1033}, -- Crystalline Broodling
    [751]={[811]=811}, -- Dancing Water Skimmer
    [1153]={[755]=755}, -- Death Talon Whelpguard
    [755]={[606]=606}, -- Death's Head Cockroach
    [555]={[640]=640}, -- Deepholm Cockroach
    [537]={[488]=488}, -- Dragonbone Hatchling
    [1722]={[1094]=1094}, -- Dream Whelpling
    [1778]={[1014]=1014}, -- Dust Bunny
    [747]={[811]=811}, -- Effervescent Glowfly
    [1181]={[928]=928}, -- Elder Python
    [1774]={[1015]=1015}, -- Eldritch Manafiend
    [1179]={[928]=928}, -- Electrified Razortooth
    [564]={[806]=806}, -- Emerald Turtle
    [1773]={[1015]=1015}, -- Erudite Manafiend
    [383]={[811]=811}, -- Eternal Strider
    [1660]={[970]=970}, -- Fel Pup
    [319]={[20]=20}, -- Feline Familiar
    [1731]={[1015]=1015,[1024]=1024}, -- Felspider
    [1581]={[970]=970}, -- Fen Crab
    [1229]={[799]=799}, -- Fiendish Imp
    [1325]={[951]=951}, -- Flamering Moth
    [1595]={[946]=946}, -- Flat-Tooth Calf
    [1709]={[1015]=1015}, -- Fledgling Kingfeather
    [407]={[1024]=1024,[37]=37,[947]=947,[673]=673}, -- Forest Spiderling
    [278]={[709]=709}, -- Fox Kit
    [1427]={[941]=941}, -- Frostfur Rat
    [756]={[640]=640}, -- Fungal Moth
    [1665]={[823]=823}, -- Ghostshell Crab
    [748]={[811]=811}, -- Gilded Moth
    [630]={[42]=42}, -- Gilnean Raven
    [1913]={[1018]=1018}, -- Gleamhoof Fawn
    [430]={[17]=17,[949]=949,[161]=161}, -- Gold Beetle
    [749]={[811]=811}, -- Golden Civet
    [750]={[811]=811}, -- Golden Civet Kitten
    [1573]={[948]=948}, -- Golden Dawnfeather
    [1712]={[1017]=1017}, -- Golden Eaglet
    [571]={[806]=806}, -- Grove Viper
    [1157]={[11]=11}, -- Harpy Youngling
    [483]={[101]=101,[970]=970}, -- Horny Toad
    [648]={[24]=24,[38]=38,[700]=700,[496]=496}, -- Huge Toad
    [1541]={[948]=948}, -- Hydraling
    [453]={[24]=24}, -- Infested Bear Cub
    [1161]={[161]=161}, -- Infinite Whelpling
    [1202]={[930]=930}, -- Ji-Kun Hatchling
    [699]={[806]=806}, -- Jumping Spider
    [678]={[857]=857}, -- Jungle Grub
    [1469]={[949]=949}, -- Junglebeak
    [1728]={[1015]=1015}, -- Juvenile Scuttleback
    [1597]={[948]=948}, -- Kaliri Hatchling
    [1583]={[946]=946}, -- Kelp Scuttler
    [1435]={[950]=950}, -- Leatherhide Runt
    [1234]={[782]=782}, -- Lesser Voidcaller
    [1623]={[796]=796}, -- Leviathan Hatchling
    [1713]={[1024]=1024,[1017]=1017}, -- Long-Eared Owl
    [1661]={[1116]=1116}, -- Lost Netherpup
    [708]={[807]=807,[857]=857}, -- Malayan Quillrat
    [709]={[807]=807}, -- Malayan Quillrat Pup
    [136]={[479]=479}, -- Mana Wyrmling
    [710]={[807]=807}, -- Marsh Fiddler
    [570]={[806]=806}, -- Masked Tanuki
    [1156]={[766]=766}, -- Mini Mindslayer
    [566]={[806]=806}, -- Mirror Strider
    [737]={[810]=810}, -- Mongoose
    [739]={[810]=810}, -- Mongoose Pup
    [1455]={[947]=947}, -- Mossbite Skitterer
    [164]={[481]=481}, -- Muckbreath
    [1441]={[1024]=1024,[950]=950,[948]=948,[946]=946}, -- Mud Jumper
    [1594]={[949]=949}, -- Mudback Calf
    [1524]={[950]=950}, -- Netherspawn, Spawn of Netherspawn
    [1664]={[970]=970}, -- Nightmare Bell
    [547]={[606]=606}, -- Nordrassil Wisp
    [1714]={[1024]=1024}, -- Northern Hawk Owl
    [530]={[486]=486}, -- Oily Slimeling
    [1126]={[811]=811}, -- Pandaren Earth Spirit
    [1615]={[949]=949}, -- Parched Lizard
    [417]={[894]=894,[461]=461,[16]=16,[43]=43,[181]=181,[476]=476,[510]=510,[42]=42,[101]=101,[534]=534,[27]=27,[941]=941,[463]=463,[545]=545,[611]=611,[1024]=1024,[24]=24,[491]=491,[799]=799,[35]=35,[950]=950,[535]=535,[684]=684,[762]=762,[481]=481,[21]=21,[948]=948,[81]=81,[301]=301,[38]=38,[478]=478,[673]=673,[521]=521,[756]=756,[26]=26,[544]=544,[710]=710,[536]=536,[951]=951,[20]=20,[970]=970}, -- Rat
    [744]={[858]=858}, -- Resilient Roach
    [439]={[32]=32}, -- Restless Shadeling
    [172]={[795]=795}, -- Searing Scorchling
    [1601]={[947]=947}, -- Servant of Demidos
    [754]={[806]=806}, -- Shrine Fly
    [677]={[807]=807}, -- Shy Bandicoon
    [568]={[949]=949,[948]=948,[946]=946,[806]=806}, -- Silkbead Snail
    [1628]={[796]=796}, -- Sister of Temptation
    [90]={[721]=721}, -- Smolderweb Hatchling
    [1574]={[1011]=1011}, -- Son of Sethe
    [1201]={[810]=810}, -- Spawn of G'nathus
    [1337]={[951]=951}, -- Spineclaw Crab
    [723]={[857]=857}, -- Spiny Terrapin
    [515]={[467]=467}, -- Sporeling Sprout
    [1146]={[535]=535}, -- Stitched Pup
    [211]={[485]=485,[301]=301,[321]=321}, -- Strand Crawler
    [1416]={[946]=946}, -- Teroclaw Hatchling
    [650]={[807]=807}, -- Terrible Turnip
    [652]={[857]=857}, -- Tiny Goldfish
    [405]={[37]=37,[970]=970,[673]=673,[201]=201}, -- Tree Python
    [469]={[181]=181,[640]=640,[606]=606}, -- Twilight Beetle
    [552]={[700]=700}, -- Twilight Fiendling
    [1464]={[941]=941,[949]=949}, -- Twilight Wasp
    [1538]={[947]=947}, -- Umbrafen Spore
    [55]={[479]=479}, -- Undercity Cockroach
    [1151]={[755]=755}, -- Untamed Hatchling
    [1244]={[930]=930}, -- Viscous Horror
    [1013]={[857]=857}, -- Wanderer's Festival Hatchling
    [535]={[496]=496}, -- Water Waveling
    [1593]={[947]=947,[946]=946,[970]=970}, -- Waterfly
    [819]={[806]=806}, -- Wild Crimson Hatchling
    [818]={[806]=806}, -- Wild Golden Hatchling
    [817]={[806]=806}, -- Wild Jade Hatchling
    [89]={[721]=721}, -- Worg Pup
    [740]={[810]=810,[858]=858}, -- Yakrat
    [752]={[811]=811}, -- Yellow-Bellied Bullfrog
    [1656]={[1116]=1116,[1116]=1116}, -- Young Talbuk
    [1304]={[951]=951}, -- Yu'la, Broodling of Yu'lon
    [1212]={[929]=929}, -- Zandalari Footslasher
    [1213]={[929]=929}, -- Zandalari Toenibbler
    [1582]={[947]=947}, -- Zangar Crawler
    [731]={[809]=809}, -- Zooey Snake
    [1761]={[1024]=1024}, -- Echo Batling
    [1710]={[1015]=1015}, -- Fledgling Oliveback
    [1762]={[1024]=1024}, -- Hog-Nosed Bat
    [1744]={[1024]=1024,[1017]=1017}, -- Mist Fox Kit
    [1776]={[1024]=1024}, -- Mudshell Conch
    --[1729]={[1015]=1015,[eye of azshara]=eye of azshara}, -- Olivetail Hare
    [726]={[809]=809}, -- Plains Monitor
    [1749]={[1017]=1017}, -- Rose Taipan
    [1587]={[947]=947,[946]=946}, -- Royal Moth
    [1599]={[946]=946}, -- Shadow Sporebat
    [1734]={[1018]=1018}, -- Shimmering Aquafly
    [1326]={[951]=951}, -- Skywisp Moth
    [1736]={[1015]=1015,[1017]=1017,[1018]=1018}, -- Slithering Brownscale
    [713]={[807]=807}, -- Softshell Snapling
    [1763]={[1024]=1024}, -- Spiketail Beaver
    [1739]={[1018]=1018}, -- Spring Strider
    [1917]={[1017]=1017}, -- Stormstruck Beaver
    [1590]={[1024]=1024,[948]=948}, -- Swamplighter Firefly
    [1735]={[1018]=1018}, -- Terror Larva
    [1456]={[948]=948}, -- Thicket Skitterer
    [1810]={[1033]=1033}, -- Thornclaw Broodling
    [1175]={[928]=928}, -- Thundertail Flapper
    [1750]={[1017]=1017}, -- Tiny Apparition
    [1737]={[1018]=1018}, -- Vale Flitter
    [1807]={[1033]=1033}, -- Vicious Broodling
    [1591]={[970]=970}, -- Violet Firefly
    [1463]={[949]=949}, -- Wood Wasp
    [1912]={[1014]=1014}, -- Young Mutant Warturtle
    [467]={[4]=4,[321]=321,[720]=720}, -- Dung Beetle
    [569]={[1015]=1015,[1024]=1024,[806]=806}, -- Garden Frog
    [753]={[806]=806}, -- Garden Moth
    [733]={[810]=810}, -- Grassland Hopper
    [647]={[490]=490,[700]=700}, -- Grizzly Squirrel
    [823]={[700]=700}, -- Highlands Skunk
    [645]={[700]=700}, -- Highlands Turkey
    [851]={[720]=720}, -- Horned Lizard
    [680]={[810]=810}, -- Kuitan Mongoose
    [543]={[720]=720}, -- Locust
    [718]={[857]=857}, -- Luyu Moth
    [703]={[806]=806}, -- Masked Tanuki Pup
    [1447]={[947]=947}, -- Moonshell Crab
    [727]={[809]=809}, -- Prairie Mouse
    [717]={[857]=857}, -- Savory Beetle
    [741]={[858]=858}, -- Silent Hedgehog
    [572]={[806]=806}, -- Spirebound Crab
    [401]={[42]=42,[488]=488,[27]=27,[545]=545,[605]=605,[37]=37,[948]=948,[38]=38,[673]=673,[544]=544}, -- Strand Crab
    [567]={[806]=806}, -- Temple Snake
    [546]={[720]=720}, -- Tol'vir Scarab
    [725]={[809]=809}, -- Alpine Foxling Kit
    [716]={[857]=857}, -- Amethyst Spiderling
    [562]={[806]=806}, -- Coral Adder
    [837]={[640]=640}, -- Emerald Shale Hatchling
    [714]={[857]=857}, -- Feverbite Hatchling
    [541]={[941]=941,[606]=606}, -- Fire-Proof Roach
    [1578]={[941]=941}, -- Frostshell Pincher
    [1457]={[941]=941}, -- Icespine Hatchling
    [1579]={[941]=941}, -- Ironclaw Scuttler
    [545]={[720]=720}, -- Leopard Scorpid
    [702]={[949]=949,[806]=806}, -- Leopard Tree Frog
    [542]={[720]=720}, -- Mac Frog
    [722]={[857]=857}, -- Mei Li Sparkler
    [633]={[490]=490,[81]=81,[495]=495,[40]=40,[281]=281}, -- Mountain Skunk
    [544]={[720]=720}, -- Oasis Moth
    [711]={[807]=807}, -- Sifang Otter
    [712]={[807]=807}, -- Sifang Otter Pup
    [1128]={[857]=857}, -- Sumprush Rodent
    [728]={[809]=809}, -- Szechuan Chicken
    [729]={[809]=809}, -- Tolai Hare
    [730]={[809]=809}, -- Tolai Hare Pup
    [536]={[486]=486,[488]=488}, -- Tundra Penguin
    [549]={[700]=700}, -- Yellow-Bellied Marmot
    [556]={[640]=640}, -- Crystal Beetle
    [644]={[491]=491}, -- Fjord Rat
    [539]={[606]=606}, -- Grotto Vole
    [534]={[490]=490}, -- Imperial Eagle Chick
    [387]={[141]=141,[462]=462,[121]=121,[463]=463,[491]=491,[35]=35,[950]=950,[37]=37,[493]=493,[21]=21,[478]=478,[39]=39,[467]=467,[496]=496}, -- Snake
    [553]={[640]=640}, -- Stowaway Rat
    [639]={[486]=486}, -- Borean Marmot
    [523]={[491]=491}, -- Devouring Maggot
    [529]={[491]=491}, -- Fjord Worg Pup
    [521]={[479]=479}, -- Fledgling Nether Ray
    [638]={[479]=479}, -- Nether Roach
    [637]={[475]=475}, -- Skittering Cavern Crawler
    [532]={[493]=493}, -- Stunted Shardhorn
    [525]={[491]=491}, -- Turkey
    [513]={[261]=261}, -- Qiraji Guardling
    [528]={[475]=475}, -- Scalded Basilisk Hatchling
    [1969]={[495]=495}, -- Stardust
    [441]={[27]=27,[281]=281}, -- Alpine Hare
    [518]={[950]=950}, -- Clefthoof Runt
    [634]={[281]=281}, -- Crystal Spider
    [414]={[475]=475,[19]=19,[29]=29,[23]=23,[465]=465,[321]=321,[947]=947,[261]=261,[61]=61,[700]=700}, -- Scorpid
    [69]={[281]=281}, -- Snowy Owl
    [517]={[478]=478}, -- Warpstalker Hatchling
    [1163]={[281]=281}, -- Anodized Robo Cub
    [632]={[606]=606,[201]=201}, -- Ash Lizard
    [425]={[29]=29,[947]=947}, -- Ash Viper
    [406]={[17]=17,[23]=23,[182]=182,[37]=37,[261]=261,[673]=673,[201]=201}, -- Beetle
    [504]={[201]=201}, -- Diemetradon Hatchling
    [415]={[19]=19,[29]=29,[606]=606,[28]=28,[201]=201}, -- Fire Beetle
    [429]={[29]=29}, -- Lava Beetle
    [422]={[38]=38}, -- Moccasin
    [403]={[37]=37,[38]=38,[673]=673,[201]=201}, -- Parrot
    [512]={[261]=261}, -- Scarab Hatchling
    [416]={[19]=19}, -- Scorpling
    [511]={[261]=261,[720]=720}, -- Sidewinder
    [503]={[241]=241,[606]=606,[201]=201}, -- Silky Moth
    [502]={[201]=201}, -- Spotted Bell Frog
    [402]={[38]=38}, -- Swamp Moth
    [497]={[182]=182,[947]=947}, -- Tainted Cockroach
    [498]={[182]=182}, -- Tainted Moth
    [499]={[182]=182}, -- Tainted Rat
    [420]={[43]=43,[4]=4,[141]=141,[462]=462,[182]=182,[463]=463,[24]=24,[491]=491,[950]=950,[321]=321,[21]=21,[38]=38,[41]=41,[700]=700,[40]=40}, -- Toad
    [484]={[101]=101,[261]=261,[161]=161,[720]=720}, -- Desert Spider
    [428]={[28]=28}, -- Molten Hatchling
    [431]={[17]=17,[161]=161,[700]=700}, -- Rattlesnake
    [560]={[976]=976,[857]=857,[946]=946,[161]=161}, -- Sea Gull
    [494]={[161]=161}, -- Silithid Hatchling
    [432]={[17]=17,[161]=161,[478]=478}, -- Stripe-Tailed Scorpid
    [505]={[61]=61}, -- Twilight Iguana
    [427]={[28]=28,[946]=946}, -- Ash Spiderling
    [626]={[23]=23,[606]=606,[20]=20}, -- Bat
    [438]={[17]=17}, -- King Snake
    [423]={[29]=29,[28]=28}, -- Lava Crab
    [491]={[161]=161}, -- Sand Kitten
    [489]={[141]=141}, -- Spawn of Onyxia
    [433]={[17]=17,[261]=261}, -- Spiky Lizard
    [492]={[161]=161}, -- Stinkbug
    [628]={[476]=476,[23]=23,[21]=21}, -- Infected Fawn
    [627]={[476]=476,[23]=23,[21]=21}, -- Infected Squirrel
    [1158]={[121]=121}, -- Stunted Yeti
    [421]={[37]=37,[673]=673}, -- Crimson Moth
    [450]={[43]=43,[463]=463,[24]=24,[491]=491,[26]=26,[20]=20,[970]=970}, -- Maggot
    [487]={[1024]=1024,[606]=606,[81]=81,[281]=281}, -- Alpine Chipmunk
    [411]={[673]=673}, -- Baby Ape
    [398]={[17]=17,[34]=34,[141]=141,[23]=23,[61]=61,[700]=700,[22]=22,[40]=40}, -- Black Rat
    [459]={[16]=16,[30]=30,[462]=462,[479]=479,[480]=480}, -- Cat
    [646]={[34]=34,[141]=141,[30]=30,[24]=24,[491]=491,[36]=36,[478]=478,[20]=20,[39]=39,[40]=40}, -- Chicken
    [488]={[81]=81}, -- Coral Snake
    [479]={[381]=381,[101]=101,[606]=606,[41]=41}, -- Elfin Rabbit
    [475]={[607]=607}, -- Giraffe Calf
    [443]={[16]=16}, -- Grasslands Cottontail
    [448]={[16]=16,[4]=4,[26]=26}, -- Hare
    [1243]={[930]=930}, -- Living Fluid
    [408]={[37]=37,[673]=673}, -- Lizard Hatchling
    [1159]={[24]=24}, -- Lofty Libram
    [404]={[27]=27,[37]=37,[673]=673,[201]=201}, -- Long-tailed Mole
    [385]={[34]=34,[141]=141,[490]=490,[9]=9,[479]=479,[39]=39,[40]=40}, -- Mouse
    [409]={[37]=37}, -- Polly
    [452]={[381]=381,[101]=101,[24]=24,[946]=946,[41]=41}, -- Red-Tailed Chipmunk
    [424]={[43]=43,[181]=181,[101]=101,[27]=27,[34]=34,[545]=545,[611]=611,[491]=491,[604]=604,[605]=605,[35]=35,[37]=37,[760]=760,[36]=36,[81]=81,[673]=673,[521]=521,[61]=61,[20]=20}, -- Roach
    [485]={[101]=101}, -- Stone Armadillo
    [509]={[40]=40}, -- Tiny Bog Beast
    [445]={[16]=16}, -- Tiny Twister
    [163]={[481]=481}, -- Toothy
    [480]={[640]=640,[101]=101}, -- Topaz Shale Hatchling
    [418]={[4]=4,[37]=37,[321]=321,[38]=38,[700]=700,[40]=40}, -- Water Snake
    [410]={[987]=987,[673]=673,[709]=709}, -- Wharf Rat
    [400]={[34]=34}, -- Widow Spiderling
    [306]={[281]=281}, -- Winterspring Cub
    [635]={[19]=19,[27]=27,[4]=4,[993]=993,[465]=465,[950]=950,[11]=11,[37]=37,[607]=607,[948]=948}, -- Adder
    [482]={[475]=475,[101]=101,[606]=606,[261]=261}, -- Rock Viper
    [640]={[24]=24}, -- Snowshoe Hare
    [412]={[522]=522,[533]=533,[181]=181,[796]=796,[19]=19,[534]=534,[27]=27,[141]=141,[23]=23,[30]=30,[463]=463,[545]=545,[611]=611,[603]=603,[24]=24,[491]=491,[604]=604,[799]=799,[535]=535,[321]=321,[602]=602,[684]=684,[947]=947,[81]=81,[38]=38,[41]=41,[521]=521,[601]=601,[26]=26,[495]=495,[536]=536,[20]=20,[523]=523,[524]=524,[281]=281,[781]=781,[496]=496}, -- Spider
    [455]={[21]=21}, -- Blighted Squirrel
    [508]={[42]=42}, -- Darkshore Cub
    [478]={[43]=43,[381]=381,[101]=101,[241]=241,[606]=606,[41]=41}, -- Forest Moth
    [495]={[43]=43}, -- Frog
    [550]={[700]=700}, -- Highlands Mouse
    [399]={[34]=34}, -- Rat Snake
    [392]={[36]=36}, -- Redridge Rat
    [397]={[894]=894,[181]=181,[476]=476,[34]=34,[545]=545,[491]=491,[950]=950,[478]=478}, -- Skunk
    [463]={[463]=463}, -- Spirit Crab
    [473]={[181]=181}, -- Turquoise Turtle
    [474]={[11]=11}, -- Cheetah Cub
    [1062]={[823]=823}, -- Darkmoon Glowfly
    [396]={[34]=34}, -- Dusk Spiderling
    [395]={[36]=36}, -- Fledgling Buzzard
    [391]={[1024]=1024,[36]=36}, -- Mountain Cottontail
    [472]={[181]=181,[81]=81,[281]=281}, -- Rabid Nut Varmint 5000
    [465]={[476]=476}, -- Ravager Hatchling
    [496]={[43]=43}, -- Rusty Snail
    [493]={[42]=42}, -- Shimmershell Snail
    [379]={[894]=894,[43]=43,[181]=181,[475]=475,[510]=510,[42]=42,[27]=27,[34]=34,[141]=141,[30]=30,[121]=121,[545]=545,[1024]=1024,[24]=24,[491]=491,[35]=35,[798]=798,[241]=241,[606]=606,[950]=950,[684]=684,[493]=493,[21]=21,[948]=948,[301]=301,[41]=41,[478]=478,[709]=709,[700]=700,[1018]=1018,[816]=816,[22]=22,[39]=39,[40]=40,[781]=781}, -- Squirrel
    [470]={[181]=181,[640]=640,[700]=700}, -- Twilight Spider
    [506]={[81]=81}, -- Venomspitter Hatchling
    [631]={[11]=11,[607]=607,[720]=720,[201]=201}, -- Emerald Boa
    [461]={[463]=463}, -- Larva
    [464]={[464]=464}, -- Grey Moth
    [437]={[35]=35}, -- Little Black Ram
    [386]={[16]=16,[9]=9,[950]=950,[11]=11,[607]=607,[362]=362,[39]=39}, -- Prairie Dog
    [388]={[181]=181,[486]=486,[491]=491,[857]=857,[950]=950,[700]=700,[39]=39}, -- Shore Crab
    [389]={[39]=39}, -- Tiny Harvester
    [1142]={[321]=321}, -- Clock'em
    [468]={[4]=4}, -- Creepy Crawly
    [458]={[20]=20}, -- Lost of Lordaeron
    [460]={[462]=462}, -- Ruby Sapling
    [1805]={[1014]=1014}, -- Alarm-o-Bot
    [74]={[1014]=1014}, -- Albino Snake
    [212]={[492]=492}, -- Ammen Vale Lashling
    [52]={[61]=61}, -- Ancona Chicken
    [836]={[858]=858}, -- Aqua Strider
    [272]={[301]=301,[321]=321}, -- Armadillo Pup
    [1927]={[1018]=1018}, -- Ash'ana
    [1323]={[951]=951}, -- Ashleaf Spriteling
    [1706]={[1018]=1018}, -- Ashmaw Cub
    [1429]={[1014]=1014}, -- Autumnal Sproutling
    [1321]={[951]=951}, -- Azure Crane Chick
    [1934]={[1033]=1033}, -- Benax
    [75]={[321]=321}, -- Black Kingsnake
    [374]={[30]=30}, -- Black Lamb
    [42]={[24]=24}, -- Black Tabby Cat
    [1322]={[953]=953}, -- Blackfuse Bombling
    [1693]={[970]=970}, -- Blazing Firehawk
    --[1753]={[helheim]=helheim}, -- Bleakwater Jelly
    [1965]={[604]=604}, -- Blightbreath
    [1964]={[604]=604}, -- Blood Boil
    [1577]={[1116]=1116}, -- Bloodthorn Hatchling
    [145]={[479]=479}, -- Blue Dragonhawk Hatchling
    [259]={[606]=606}, -- Blue Mini Jouster
    [138]={[471]=471}, -- Blue Moth
    [40]={[30]=30}, -- Bombay Cat
    [1963]={[604]=604}, -- Boneshard
    [1563]={[19]=19}, -- Bronze Whelpling
    [70]={[9]=9}, -- Brown Prairie Dog
    [137]={[479]=479}, -- Brown Rabbit
    [77]={[321]=321}, -- Brown Snake
    [224]={[510]=510}, -- Calico Cat
    [1633]={[789]=789}, -- Chaos Pup
    [1303]={[951]=951}, -- Chi-Chi, Hatchling of Chi-Ji
    [174]={[481]=481}, -- Chuck
    [47]={[673]=673}, -- Cockatiel
    [1890]={[301]=301}, -- Corgi Pup
    [41]={[30]=30}, -- Cornish Rex Cat
    --[1672]={[hellfire citadel]=hellfire citadel}, -- Corrupted Nest Guardian
    [1931]={[1015]=1015}, -- Court Scribe
    [1962]={[529]=529}, -- Creeping Tentacle
    [507]={[41]=41}, -- Crested Owl
    [318]={[795]=795}, -- Crimson Lasher
    [78]={[479]=479}, -- Crimson Snake
    [1537]={[949]=949}, -- Crimson Spore
    [58]={[40]=40}, -- Crimson Whelpling
    [1752]={[1024]=1024}, -- Crispin
    [1688]={[971]=971}, -- Crusher
    [1521]={[20]=20}, -- Cursed Birman
    [1329]={[951]=951}, -- Dandelion Frolicker
    [56]={[40]=40,[141]=141,[17]=17,[29]=29}, -- Dark Whelpling
    [343]={[823]=823}, -- Darkmoon Cub
    [1061]={[823]=823}, -- Darkmoon Hatchling
    [330]={[823]=823}, -- Darkmoon Monkey
    [335]={[823]=823}, -- Darkmoon Turtle
    [232]={[141]=141}, -- Darting Hatchling
    [1449]={[301]=301,[321]=321}, -- Deathwatch Hatchling
    [233]={[749]=749}, -- Deviate Hatchling
    [1952]={[543]=543}, -- Dreadmaw
    [1331]={[953]=953}, -- Droplet of Y'Shaarj
    [1967]={[604]=604}, -- Drudge Ghoul
    [205]={[492]=492}, -- Dun Morogh Cub
    [207]={[492]=492}, -- Durotar Scorpion
    [1588]={[1116]=1116}, -- Dusty Sporewing
    [293]={[640]=640,[700]=700,[720]=720}, -- Elementium Geode
    [209]={[492]=492}, -- Elwynn Lamb
    [1720]={[1015]=1015}, -- Emmigosa
    [1766]={[950]=950}, -- Empowered Manafiend
    [1765]={[950]=950}, -- Empyreal Manafiend
    [1764]={[950]=950}, -- Energized Manafiend
    [1717]={[1033]=1033}, -- Extinguished Eye
    [1576]={[946]=946}, -- Eye of Observation
    [447]={[30]=30,[41]=41}, -- Fawn
    [1760]={[1014]=1014}, -- Fel Piglet
    [342]={[241]=241}, -- Festival Lantern
    [1802]={[1018]=1018}, -- Fetid Waveling
    [146]={[467]=467}, -- Firefly
    [847]={[806]=806}, -- Fishy
    [1716]={[1015]=1015}, -- Fledgling Warden Owl
    [1162]={[691]=691}, -- Fluxfire Feline
    [1627]={[796]=796}, -- Fragment of Desire
    [1626]={[796]=796}, -- Fragment of Suffering
    [1471]={[941]=941}, -- Fruit Hunter
    [1144]={[535]=535}, -- Fungal Abomination
    [1961]={[529]=529}, -- G0-R41-0N Ultratonk
    [1237]={[4]=4}, -- Gahz'rooki
    [477]={[9]=9}, -- Gazelle Fawn
    [1143]={[535]=535}, -- Giant Bone Spider
    [193]={[1014]=1014}, -- Giant Sewer Rat
    [1598]={[1116]=1116}, -- Glowing Sporebat
    [260]={[606]=606}, -- Gold Mini Jouster
    [142]={[462]=462}, -- Golden Dragonhawk Hatchling
    [1332]={[953]=953}, -- Gooey Sha-ling
    [68]={[41]=41}, -- Great Horned Owl
    [50]={[756]=756}, -- Green Wing Macaw
    [1622]={[775]=775}, -- Grotesque
    [1705]={[1018]=1018}, -- Grumpy
    [1345]={[951]=951}, -- Gu'chi Swarmling
    [1338]={[951]=951}, -- Gulp Froglet
    [234]={[496]=496}, -- Gundrak Hatchling
    [1147]={[696]=696}, -- Harbinger of Flame
    [1346]={[951]=951}, -- Harmonious Porcupette
    [67]={[41]=41}, -- Hawk Owl
    [49]={[37]=37,[673]=673}, -- Hyacinth Macaw
    [317]={[795]=795}, -- Hyjal Bear Cub
    [1631]={[775]=775}, -- Hyjal Wisp
    [1956]={[529]=529}, -- Ironbound Proto-Whelp
    [442]={[27]=27}, -- Irradiated Roach
    [792]={[301]=301,[321]=321}, -- Jade Crane Chick
    [1348]={[951]=951}, -- Jadefire Spirit
    [1333]={[951]=951}, -- Jademist Dancer
    [1334]={[953]=953}, -- Kovok
    [1533]={[995]=995}, -- Lanticore Spawnling
    [307]={[793]=793}, -- Lashtail Hatchling
    [235]={[11]=11}, -- Leaping Hatchling
    [1226]={[799]=799}, -- Lil' Bad Wolf
    [341]={[241]=241}, -- Lunar Lantern
    [1922]={[1033]=1033}, -- Lurking Owl Kitten
    [132]={[478]=478}, -- Magical Crawdad
    [1955]={[529]=529}, -- Magma Rageling
    [1446]={[950]=950}, -- Meadowstomper Calf
    [83]={[673]=673}, -- Mechanical Chicken
    [215]={[492]=492}, -- Mechanopeep
    [149]={[478]=478}, -- Miniwing
    [165]={[781]=781}, -- Mojo
    [1276]={[823]=823}, -- Moon Moon
    [210]={[492]=492}, -- Mulgore Hatchling
    [1954]={[543]=543}, -- Nerubian Swarmer
    [186]={[478]=478}, -- Nether Ray Fry
    [1228]={[799]=799}, -- Netherspace Abyssal
    [1723]={[1094]=1094}, -- Nightmare Whelpling
    [1715]={[1014]=1014}, -- Nightwatch Swooper
    [1727]={[1014]=1014}, -- Nursery Spider
    [236]={[510]=510}, -- Obsidian Hatchling
    [1335]={[951]=951}, -- Ominous Flame
    [43]={[30]=30}, -- Orange Tabby Cat
    [1124]={[811]=811}, -- Pandaren Fire Spirit
    [301]={[37]=37}, -- Panther Cub
    [198]={[488]=488}, -- Pengu
    [1663]={[970]=970}, -- Periwinkle Calf
    [175]={[798]=798}, -- Phoenix Hatchling
    [1235]={[782]=782}, -- Phoenix Hawk Hatchling
    [166]={[27]=27}, -- Pint-Sized Pink Pachyderm
    [1755]={[1014]=1014}, -- Plump Jelly
    [1233]={[782]=782}, -- Pocket Reaver
    [1200]={[930]=930}, -- Pygmy Direhorn
    [1907]={[1018]=1018}, -- Pygmy Owl
    [378]={[181]=181,[475]=475,[510]=510,[42]=42,[27]=27,[34]=34,[30]=30,[462]=462,[121]=121,[1024]=1024,[24]=24,[491]=491,[241]=241,[606]=606,[9]=9,[950]=950,[36]=36,[480]=480,[21]=21,[81]=81,[301]=301,[20]=20,[22]=22,[39]=39,[40]=40}, -- Rabbit
    [237]={[201]=201}, -- Ravasaur Hatchling
    [238]={[40]=40}, -- Razormaw Hatchling
    [239]={[37]=37,[673]=673}, -- Razzashi Hatchling
    [143]={[462]=462}, -- Red Dragonhawk Hatchling
    [139]={[479]=479}, -- Red Moth
    [1804]={[1018]=1018}, -- Risen Saber Kitten
    [1453]={[1014]=1014}, -- River Calf
    [471]={[181]=181,[321]=321,[281]=281}, -- Robo-Chick
    [1957]={[529]=529}, -- Runeforged Servitor
    [271]={[709]=709}, -- Rustberg Gull
    [1958]={[529]=529}, -- Sanctum Cub
    [1692]={[970]=970}, -- Savage Cub
    [1448]={[1116]=1116,[1116]=1116}, -- Sea Calf
    [340]={[823]=823}, -- Sea Pony
    [1539]={[970]=970}, -- Seaborne Spore
    [218]={[492]=492}, -- Sen'jin Fetish
    [51]={[673]=673}, -- Senegal
    [1754]={[1014]=1014}, -- Sewer-Pipe Jelly
    [1690]={[970]=970}, -- Shard of Cyrukh
    [229]={[492]=492}, -- Shimmering Wyrmling
    [629]={[321]=321}, -- Shore Crawler
    [44]={[479]=479}, -- Siamese Cat
    [144]={[462]=462}, -- Silver Dragonhawk Hatchling
    [45]={[30]=30}, -- Silver Tabby Cat
    [291]={[24]=24}, -- Singing Sunflower
    [1336]={[951]=951}, -- Skunky Alemental
    [1711]={[1024]=1024}, -- Skyhorn Nestling
    [1655]={[1116]=1116,[1116]=1116}, -- Slithershock Elver
    [419]={[16]=16,[381]=381,[101]=101,[30]=30,[462]=462,[463]=463,[35]=35,[11]=11,[607]=607,[38]=38,[41]=41,[467]=467}, -- Small Frog
    [1960]={[529]=529}, -- Snaplasher
    [1953]={[543]=543}, -- Snobold Runt
    [440]={[27]=27}, -- Snow Cub
    --[1941]={[snowfang]=snowfang}, -- Snowfang
    [72]={[27]=27}, -- Snowshoe Rabbit
    [1966]={[604]=604}, -- Soulbroken Whelpling
    [466]={[4]=4,[321]=321}, -- Spiny Lizard
    [1911]={[1014]=1014}, -- Sting Ray Pup
    [1629]={[775]=775}, -- Stinkrot
    [1721]={[1017]=1017}, -- Stormborne Whelpling
    [675]={[30]=30,[301]=301}, -- Stormwind Rat
    [1518]={[27]=27}, -- Stout Alemental
    [1632]={[789]=789}, -- Sunblade Micro-Defender
    [1885]={[1017]=1017}, -- Sunborne Val'kyr
    [204]={[492]=492}, -- Teldrassil Sproutling
    [1230]={[780]=780}, -- Tideskipper
    [287]={[29]=29}, -- Tiny Flamefly
    [279]={[640]=640}, -- Tiny Shale Spider
    [206]={[492]=492}, -- Tirisfal Batling
    [65]={[823]=823}, -- Tree Frog
    [454]={[20]=20}, -- Undercity Rat
    [1921]={[1033]=1033}, -- Untethered Wyrmling
    [187]={[799]=799}, -- Vampiric Batling
    [1596]={[948]=948}, -- Veilwatcher Hatchling
    [1344]={[951]=951}, -- Vengeful Porcupette
    [84]={[39]=39}, -- Westfall Chicken
    [46]={[301]=301}, -- White Kitten
    [141]={[471]=471}, -- White Moth
    [1968]={[604]=604}, -- Wicked Soul
    [1523]={[20]=20}, -- Widget the Departed
    [1959]={[529]=529}, -- Winter Rageling
    [220]={[42]=42}, -- Withers
    [64]={[823]=823}, -- Wood Frog
    [1634]={[789]=789}, -- Wretched Servant
    [140]={[471]=471}, -- Yellow Moth
    [1536]={[970]=970}, -- Zangar Spore
    [1428]={[947]=947}, -- Zomstrok
    [331]={[301]=301}, -- Alliance Balloon
    [1666]={[823]=823}, -- Blorp
    [336]={[823]=823}, -- Darkmoon Balloon
    [282]={[301]=301,[321]=321}, -- Guild Herald
    [280]={[301]=301,[321]=321}, -- Guild Page
    [332]={[321]=321}, -- Horde Balloon
    [1604]={[1014]=1014}, -- Nethaera's Light
    [1350]={[951]=951}, -- Sky Lantern
    [216]={[492]=492}, -- Argent Gruntling
    [1719]={[1033]=1033}, -- Eye of Inquisition
    [283]={[301]=301,[321]=321}, -- Guild Herald
    [281]={[301]=301,[321]=321}, -- Guild Page
--[1935]={[the great sea]=the great sea}, -- Squirky

}

