morning_tags = %w[nsfw Nipslips DrunkGirls OnOff nipples laundryday 
                happygirls Christiangirls camwhores
              HappyEmbarrassedGirls FlashingGirls RealGirls]

morning_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:morning]
end



# updated at 9am 
brunch_tags = %w[facedownassup AmateurGFS selfshots toplessamateurs GirlsOnToilets FuckMarryorKill]

brunch_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:brunch]
end

# brunch_tags.each do |tag_name|      
#   tag = Tag.find_by_name tag_name
#   tag.update_case = UPDATE_CASE[:brunch]
#   tag.save 
# end



afternoon_tags = %w[cougars milf  MatureWomen Unashamed SexyButNotPorn]

afternoon_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:afternoon]
end

#after_lunch

after_lunch_tags = %w[curvy Upskirt  treatemright Smallnipples downblouse  ]

after_lunch_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:after_lunch]
end
 

evening_tags = %w[O_Faces openholes pink vagina analholes gape cumsluts buttsharpies agedlikefinewine]

evening_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:evening]
end

# migration_array = ["aww", "nsfw", "MatureWomen", "cougars", "FlashingGirls", "gonewild", "lipsdatgrip", "Tgirls", "onandoff", "AsianPorn", "milf", "Hotchickswithtattoos", "nsfw_gif", "OnOff", "realgirls", "wtf", "legsup", "curvy", "perfectbabes", "toplessamateurs", "juicyasians", "nsfwhardcore", "buttsharpies", "NSFW_China", "O_Faces", "Orgasms", "ravergirl", "nsfwnew", "cumsluts", "GoneWildPlus", "NSFW_nospam", "voluptuous", "thick", "AsianHotties", "hugeboobs", "Upskirt", "nsfw2", "nsfwoutfits", "collegesluts", "camwhores", "Bondage", "anilingus", "ns4w", "nsfw_young", "genderfuck", "TightShorts", "CollegeAmateurs", "PiercedNSFW", "preggo", "lipsthatgrip", "cumfetish", "MILF", "HappyEmbarrassedGirls", "burstingout", "randomsexygifs", "Girlsontop", "groupsex", "drunk", "drunkgonewild", "japanpics", "NSFW_Japan", "DirtyGaming", "buttsex", "OnlyAnal", "gonewildcolor", "foodornude", "DrunkGirls", "GirlsOnToilets", "anal", "SexDolls", "AnalFisting", "Nipslips", "analholes", "SpreadEagle", "highheels", "vagina", "happygaps", "Pink", "simps", "ExtremeFutanari", "Fingering", "PublicFlashing", "BoltedOnBooty", "GonewildAlbums", "NSFW_Korea", "Barelylegal", "Tushy", "BubbleButts", "GonewildFaces", "BlackTapeProject", "nsfw_galleries", "imgurgw", "hotwife", "cuckold", "wifesharing", "GoneInsane", "openholes", "bizarresex", "TheHangingBoobs", "weddingringsshowing", "Stacked", "FATOROBOTO", "ProlapseSucking", "RealGirls", "femalesgonewild", "sex_comics", "bonermaterial", "maturemilf", "upherbutt", "Unashamed", "gape", "treatemright", "meinmyplace", "pokies", "grool", "gwcouples", "AsianPussy", "AsianGrool", "CelebrityPussy", "AsianBush", "CumSluts", "AsianCumsluts", "AsianBlowjobs", "AsianNipples", "agedlikefinewine", "lactation", "SeeThru", "FreckledGirls", "iWantToFuckHer", "WedgieGirls", "highheelsNSFW", "nakedbabes", "leotard", "fishnets", "cat_girls", "realbikinis", "Stockings", "ass", "nippleripple", "asianhotties", "prettygirls", "cheekyasian", "engorgedveinybreasts", "Boobies", "onoffceleb", "Primes", "AsianArmpits", "Graphis", "AsianGirlsWithGlasses", "formylover", "Public", "publicnakedness", "Boots", "TinyTits", "nsfwearrings", "asshole", "CowboyHats", "Bottles", "thickthighs", "squatnsfw", "AsianAsshole", "Pussy", "AsianSoles", "AsianCuties", "annoyedtobenude", "rearpussy", "collared", "Mooning", "gentlemanboners", "bondage", "makeupfetish", "mycherrycrush", "ShinyPorn", "bimbofetish", "highheelsnsfw", "damselsindistress", "mmgirls", "EWITB", "thinspo", "randomsexiness", "pantyfetish", "cellshots", "WtSSTaDaMiT", "athleticgirls", "datgap", "bikinis", "PrettyAwesome", "girlsboxing", "nudedance", "petitegirls", "upskirt", "Christiangirls", "skinnytail", "pearlgirls", "GirlsWithHeadTowels", "wet", "PaleGirls", "BitchFaces", "boobies", "wankwagon", "emmaglover", "AnyoneForTennis", "Assinthong", "girlsinleggings", "shewantstofuck", "GirlsinYogaPants", "ladiesinleather", "bdsm", "Mexicana", "latinas", "mexicogonewild", "SexyGirlsInBoots", "AmateurModels", "FuckMarryorKill", "Jilling", "squirting", "Smallnipples", "palegirls", "GroupOfNudeGirls", "tinytits", "NextDoorAsians", "PrettyGirls", "boobgifs", "nipslips", "AngryWomenOnThePhone", "TeaGirls", "JustOneBoob", "dirtysmall", "InTheBushes", "AdultCorner", "Facesitting", "Pigtails", "NSFWBraids", "SexyButNotPorn", "IWantToFuckher", "Just18", "tanlines", "metart", "AdultGIFS", "Peachfuzz", "hairypussy", "ginger", "downblouse", "Joymii", "lesbians", "pink", "OnHerKnees", "adultgifs", "cunnilingus", "amateurlesbians", "PassionSex", "Nightlysex", "Elaysmith", "selfshots", "CountryGirls", "FlannelGetsMeHot", "SexyFrex", "WouldTotallyFuck", "hotties", "girlsontheirbacks", "whichonewouldyoudo", "cosplaygirls", "NSFW_GIF", "AnythingGoesPics", "GirlsDoingNerdyThings", "amateur", "GirlswithGlasses", "Stockingtops", "redheads", "dykesgonewild", "tits", "Unexpected", "bananatits", "BeautifulTitsAndAss", "happygirls", "nipples", "tightdresses", "gorgeousgirls", "ProCheerleaders", "Brunette", "JuicyAsians", "BreastEnvy", "Aprons", "Boobs", "gonwildcurvy", "HandBra", "camporn", "Pantyfetish", "pantyhosedgirls", "assinthong", "laundryday", "cfnf", "hairbra", "Reflections", "girlswithneonhair", "MetArt", "LegalTeens", "bustier", "Tanlines", "NoTorso", "nsfwcelebgifs", "bathing", "Slimgirls", "BookNymphs", "NaturalRed", "bathtubs", "FireCrotch", "Lordosis", "Girlswithtoys", "AmateurGFS", "SexyGirlsInJeans", "GoneMild", "doggystyle", "facedownassup", "gonewildhairy", "momsgonewild", "collegeslut", "LabiaGW", "chubby", "asiannsfw", "TumblrPorn", "realasians", "NSFW_ASIAN", "facialfun", "blowjobs", "facial", "FlexiGirls", "amateurteen", "JuicyAsian", "pussy", "drunkgirls", "torpedotits", "NutsBabes", "hugenaturals‎", "heavyhangers", "titfuck‎", "Amateur", "womenofcolorXXX", "hugeboobs‎", "bustypetite", "nipples‎", "boyshort", "virginsGW", "vixen", "Armpits", "nsfwskirts", "Erotic_Galleries", "hairy", "flexi", "ThickAsians", "AsianAmateurGirls", "chubbyasians", "asstastic", "GWCurvy", "gonewildcurvy", "BBWGW‎", "SexyHalfAsians", "DirtyAsian", "AsianChicks", "NudeAsia", "NSFWet", "asianhotbabes", "AsiansinBikinis", "sexyasiangirls", "realasianbabes", "bustyasians", "asianass", "AsianPee", "asianbabes", "asianfacials", "scatporn", "BDSMGW", "kinky", "adultcontent", "Pee", "peegonewild", "kuff", "Saggy", "TheUnderboob", "veins", "VaginaCaressing", "badmothers", "snapchatsluts", "PinkandBare", "GoneWildHairy", "TheLandingStrip", "datgrip", "CreamFilled", "PerfectPussies", "PublicUpskirts", "ButterflyWings", "TINYlips", "puffypussy", "peachlips", "labiaplasty", "LovelyLabia", "datass", "cameltoe", "cameltoepics", "JapanSluts", "GushingGirls", "Amateur_Bitches", "slutbusty", "bridesluts", "AmateurGirlsNaked", "FacebookCleavage", "SUMMERtimeheat", "CollegeInitiation", "groupofnudegirls", "cleavage", "RealAsians", "realdownblouse", "EpicCleavage", "sideboob", "WouldYouFuckMyWife", "knuckledeepinpublic", "NudeForPublic", "exposedinpublic", "normalnudes", "pinupstyle", "LadiesGoneWild", "NudeBeach", "PervyCurvy", "nsfwnonporn", "unrealgirls", "girlsinyogapants", "FabHard", "AnalInk", "StandingAsshole", "Gravure", "creampies", "javure", "babes", "WhatFollyTheatre", "ShavedGirls", "nyannekochan", "PacificGirls", "pantyselling", "SpreadEm", "BustyPetite", "PerfectBabes", "UnrealGirls", "beef_flaps", "ButtsAndBareFeet", "altgonewild", "FapHard", "FMK_Purists", "fuckmarryorkill", "xray", "w4b", "thickloads", "PuffyNipples", "BurstingOut", "QualityNsfw", "girlsinanklesocks", "hipcleavage", "AgedBeauty", "ribcage", "SnorkelPorn", "TwinGirls", "clothedwomen", "Nsfw_Interesting_Gifs", "pornid", "PussyFlashing", "NotSafeForNature", "changingrooms", "AmateurAllure", "SillyGirls", "AsianHottiesGIFS", "pornpedia", "SelfshotAsians", "YesSheSquats", "AmateurAsianGirls", "IndianTeens", "FrenchesMILFs", "Vulva", "AnnoyedToBeNude", "pubephillia", "pasties", "HomegrownTits", "thatrearview", "Milf_Pics", "NoTop", "StraightGirlsPlaying", "onoffcollages", "Butterflywings", "bigclit", "hardcoreaww", "RealChinaGirls", "serafuku", "eurogirls", "scandinaviangirls", "bdsmgw", "ANALGW", "whatcouldgowrong", "MilitaryPorn", "masterofanal", "stockingmatures", "hungrybutts", "preggoporn", "cuckoldpregnancy", "coldporn", "whywouldyoufuckthat", "themedumps", "anal_addiction", "nsfw_wtf", "NordicWomen", "CougarsAndCubs", "festivalsluts", "withoutaclue", "RandomSexyGifs", "Breeding", "gwinsertions", "WhoreCams", "NSFW_HTML5", "sauna_nsfw", "AmateursKing", "insertions", "asslick", "dickgirls", "punny", "pussyflashing", "musclesgonewild", "confusedboners", "nsfwfunny", "CumHaters", "FacialFun", "thinchickswithtits", "FineLadies", "FoxTails", "gettingherselfoff", "hiddengirls", "traps", "peehole", "Asiannipples", "saggy", "airboobs", "painal", "oldenporn", "tittydrop", "thicklogic", "amateursking", "subwife", "cougarxxx", "onlyblondes", "fap_folder", "CelebrityNipples", "GroupsGoneWild", "nsfwsnaps", "straightgirlsplaying", "girlsdoingstuffnaked", "naturists", "cmnf", "realolderwomen", "SimplyNaked", "isthatCUM", "watches", "before_after_cumsluts"]
# 
# migration_array.each do |tag_name|
#   Tag.create :name => tag_name, :update_case => UPDATE_CASE[:evening]
# end



time_1_tags = %w[girlsontheirbacks GroupOfNudeGirls AnyoneForTennis ]

time_1_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_1]
end

time_2_tags = %w[grool weddingringsshowing GirlsWithHeadTowels  legsup]

time_2_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_2]
end

time_3_tags = %w[iWantToFuckHer hairbra CollegeAmateurs AdultCorner]

time_3_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_3]
end

time_4_tags = %w[hotwife TheHangingBoobs SpreadEagle cunnilingus]

time_4_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_4]
end

time_5_tags = %w[randomsexiness shewantstofuck collegesluts NSFW_China]

time_5_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_5]
end

time_6_tags = %w[tits EWITB perfectbabes InTheBushes ns4w]

time_6_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_6]
end

time_7_tags = %w[tits onoffceleb blowjobs cumfetish facial]

time_7_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_7]
end

time_8_tags = %w[hairypussy GonewildAlbums gonewildhairy]

time_8_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_8]
end

time_9_tags = %w[upskirt cellshots momsgonewild JustOneBoob]

time_9_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_9]
end

time_10_tags = %w[Tushy wifesharing Public asiannsfw TeaGirls]

time_10_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_10]
end

time_11_tags = %w[facialfun happygaps nippleripple nudedance]

time_11_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_11]
end

time_12_tags = %w[Hotchickswithtattoos HandBra realasians]

time_12_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_12]
end

time_13_tags = %w[Stacked femalesgonewild PublicFlashing simps]

time_13_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_13]
end

time_14_tags = %w[nsfw_young cat_girls gonewild  WedgieGirls gwcouples]

time_14_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_14]
end

time_15_tags = %w[ BookNymphs FlexiGirls Slimgirls Just18 flexi imgurgw]

time_15_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_15]
end

time_16_tags = %w[ bathing NoTorso Tanlines amateurteen asstastic  gonewildcurvy]

time_16_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_16]
end





time_17_tags = %w[ LabiaGW camporn  NightlySex AsianAsshole ]

time_17_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_17]
end

time_18_tags = %w[ JuicyAsians rearpussy pussy PassionSex AsianCuties]

time_18_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_18]
end

time_19_tags = %w[NSFW_Japan lipsthatgrip hugenaturals heavyhangers AsianPussy]

time_19_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_19]
end

time_20_tags = %w[Amateur hugeboobs bustypetite Peachfuzz ThickAsians]

time_20_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_20]
end

time_21_tags = %w[dirtysmall Lordosis assinthong squatnsfw  asshole]

time_21_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_21]
end

time_22_tags = %w[ nsfwearrings TinyTits  BeautifulTitsAndAss GirlswithGlasses]

time_22_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_22]
end



time_23_tags = %w[ nextdoorasians datgap realbikinis thinspo  ]

time_23_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_23]
end

time_24_tags = %w[ Mooning  gorgeousgirls thickthighs BreastEnvy ]

time_24_tags.each do |tag_name|      
  Tag.create :name => tag_name, :update_case => UPDATE_CASE[:time_24]
end

