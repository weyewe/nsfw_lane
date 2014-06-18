=begin
# morning tag:   ,  ,
  , 
  , ,  ,  ,  , , , 
   ,  ,  ,  ,  , , ,  , , 
  , ,  , ,  , , , ,
  , , ,,  , , 
  , , , ,  
  ,  , 
    

#
  , ,  , , ,  , ,
  , , , 
  
  
  
  
  
=end

class Tag < ActiveRecord::Base
  attr_accessible :name, :update_case  # , :body
  # this tag will be doing the parsing 
  
  has_many :posts 
  def self.extract_latest_posts
    
    # url = "http://www.reddit.com/r/GirlsWithHeadTowels/hot.json?limit=1&format=json"
    url = "http://www.reddit.com/r/nsfw/hot.json?limit=2&format=json"
    response = HTTParty.get( url ) 
   
    
    
    parsed_json = ActiveSupport::JSON.decode( response.body )
    # 
    # parsed_json['data']['children'].first['data']['title']
    # parsed_json['data']['children'].first['data']['permalink']
    # parsed_json['data']['children'].first['data']['name']  # reddit's unique id 
    # parsed_json['data']['children'].first['data']['url'] 
    # parsed_json['data']['children'].first['data']['author'] 
    # 
    # 
    # parsed_json['data']['after']  # give the next data after this shite
    # parsed_json['data']['before'] # give the previous data before this shite 
    # 
    # "http://www.reddit.com/r/GirlsWithHeadTowels/hot.json?limit=50&after=t3_1al9s9&format=json"
    
    
    
    # no_more_data if parsed_json['data']['children'].length == 0 
      
    
  end
  
  def self.extract_play 
    url = "http://www.reddit.com/r/GirlsWithHeadTowels/hot.json?limit=1&format=json"
    response = HTTParty.get( url )
  end
  
  
  # the real extraction 
  
  
  def get_latest_posts
    if not self.last_parsed_reddit_name.nil? and self.last_parsed_reddit_name.length != 0 
      puts "The one with last parsed"
      url = "http://www.reddit.com/r/#{self.name}/hot.json?limit=20&before=#{last_parsed_reddit_name}&format=json"
    else
      puts "virgin shite"
      url = "http://www.reddit.com/r/#{self.name}/hot.json?limit=20&format=json"
    end
    response = HTTParty.get( url )
     
    ActiveSupport::JSON.decode( response.body )
  end
  
  
  def update_posts
    begin
      parsed_json = self.get_latest_posts 
    
    
      if parsed_json['data']['children'].length != 0
        # update the last extracted reddit post 
        first_data = parsed_json['data']['children'].first
        self.last_parsed_reddit_name = first_data['data']['name'] 
        self.save 
      
      
        parsed_json['data']['children'].each do |post_data|
          next if Post.find_by_reddit_name( post_data['data']['name'])
          
          if Post.is_direct_image_link?(  post_data['data']['url'] )
            Post.create_with_direct_image_link( self, post_data ) 
          else
            Post.create_with_indirect_image_link( self, post_data )
          end
        end
      
      
      end
    rescue 
      return nil
    end
  end
  
  
  
  def extract_latest_posts(after)
    if after.present? and after.length != 0 
      url = "http://www.reddit.com/r/#{self.name}/hot.json?limit=50&after=#{after}&format=json"
    else
      url = "http://www.reddit.com/r/#{self.name}/hot.json?limit=50&format=json"
    end
    response = HTTParty.get( url )
     
    ActiveSupport::JSON.decode( response.body )
  end
  
  
  def extract_content( after ) 
    after_reddit_name = nil 
    result = [] 
    begin
      parsed_json = self.extract_latest_posts(after) 
    
    
      if parsed_json['data']['children'].length != 0
        # update the last extracted reddit post 
        first_data = parsed_json['data']['children'].last
        after_reddit_name = first_data['data']['name'] 
      
      
        parsed_json['data']['children'].each do |post_data|
          next if Post.find_by_reddit_name( post_data['data']['name'])
          
          if Post.is_direct_image_link?(  post_data['data']['url'] )
            result <<  post_data['data']['url']   
          end
        end
      
      
      end
    rescue 
      return nil
    end
    
    return [
        result,
        after_reddit_name
      ]
    
    
    
    
  end
   


  
end


=begin

migration_array = ["aww", "nsfw", "MatureWomen", "cougars", "FlashingGirls", "gonewild", "lipsdatgrip", "Tgirls", "onandoff", "AsianPorn", "milf", "Hotchickswithtattoos", "nsfw_gif", "OnOff", "realgirls", "wtf", "legsup", "curvy", "perfectbabes", "toplessamateurs", "juicyasians", "nsfwhardcore", "buttsharpies", "NSFW_China", "O_Faces", "Orgasms", "ravergirl", "nsfwnew", "cumsluts", "GoneWildPlus", "NSFW_nospam", "voluptuous", "thick", "AsianHotties", "hugeboobs", "Upskirt", "nsfw2", "nsfwoutfits", "collegesluts", "camwhores", "Bondage", "anilingus", "ns4w", "nsfw_young", "genderfuck", "TightShorts", "CollegeAmateurs", "PiercedNSFW", "preggo", "lipsthatgrip", "cumfetish", "MILF", "HappyEmbarrassedGirls", "burstingout", "randomsexygifs", "Girlsontop", "groupsex", "drunk", "drunkgonewild", "japanpics", "NSFW_Japan", "DirtyGaming", "buttsex", "OnlyAnal", "gonewildcolor", "foodornude", "DrunkGirls", "GirlsOnToilets", "anal", "SexDolls", "AnalFisting", "Nipslips", "analholes", "SpreadEagle", "highheels", "vagina", "happygaps", "Pink", "simps", "ExtremeFutanari", "Fingering", "PublicFlashing", "BoltedOnBooty", "GonewildAlbums", "NSFW_Korea", "Barelylegal", "Tushy", "BubbleButts", "GonewildFaces", "BlackTapeProject", "nsfw_galleries", "imgurgw", "hotwife", "cuckold", "wifesharing", "GoneInsane", "openholes", "bizarresex", "TheHangingBoobs", "weddingringsshowing", "Stacked", "FATOROBOTO", "ProlapseSucking", "RealGirls", "femalesgonewild", "sex_comics", "bonermaterial", "maturemilf", "upherbutt", "Unashamed", "gape", "treatemright", "meinmyplace", "pokies", "grool", "gwcouples", "AsianPussy", "AsianGrool", "CelebrityPussy", "AsianBush", "CumSluts", "AsianCumsluts", "AsianBlowjobs", "AsianNipples", "agedlikefinewine", "lactation", "SeeThru", "FreckledGirls", "iWantToFuckHer", "WedgieGirls", "highheelsNSFW", "nakedbabes", "leotard", "fishnets", "cat_girls", "realbikinis", "Stockings", "ass", "nippleripple", "asianhotties", "prettygirls", "cheekyasian", "engorgedveinybreasts", "Boobies", "onoffceleb", "Primes", "AsianArmpits", "Graphis", "AsianGirlsWithGlasses", "formylover", "Public", "publicnakedness", "Boots", "TinyTits", "nsfwearrings", "asshole", "CowboyHats", "Bottles", "thickthighs", "squatnsfw", "AsianAsshole", "Pussy", "AsianSoles", "AsianCuties", "annoyedtobenude", "rearpussy", "collared", "Mooning", "gentlemanboners", "bondage", "makeupfetish", "mycherrycrush", "ShinyPorn", "bimbofetish", "highheelsnsfw", "damselsindistress", "mmgirls", "EWITB", "thinspo", "randomsexiness", "pantyfetish", "cellshots", "WtSSTaDaMiT", "athleticgirls", "datgap", "bikinis", "PrettyAwesome", "girlsboxing", "nudedance", "petitegirls", "upskirt", "Christiangirls", "skinnytail", "pearlgirls", "GirlsWithHeadTowels", "wet", "PaleGirls", "BitchFaces", "boobies", "wankwagon", "emmaglover", "AnyoneForTennis", "Assinthong", "girlsinleggings", "shewantstofuck", "GirlsinYogaPants", "ladiesinleather", "bdsm", "Mexicana", "latinas", "mexicogonewild", "SexyGirlsInBoots", "AmateurModels", "FuckMarryorKill", "Jilling", "squirting", "Smallnipples", "palegirls", "GroupOfNudeGirls", "tinytits", "NextDoorAsians", "PrettyGirls", "boobgifs", "nipslips", "AngryWomenOnThePhone", "TeaGirls", "JustOneBoob", "dirtysmall", "InTheBushes", "AdultCorner", "Facesitting", "Pigtails", "NSFWBraids", "SexyButNotPorn", "IWantToFuckher", "Just18", "tanlines", "metart", "AdultGIFS", "Peachfuzz", "hairypussy", "ginger", "downblouse", "Joymii", "lesbians", "pink", "OnHerKnees", "adultgifs", "cunnilingus", "amateurlesbians", "PassionSex", "Nightlysex", "Elaysmith", "selfshots", "CountryGirls", "FlannelGetsMeHot", "SexyFrex", "WouldTotallyFuck", "hotties", "girlsontheirbacks", "whichonewouldyoudo", "cosplaygirls", "NSFW_GIF", "AnythingGoesPics", "GirlsDoingNerdyThings", "amateur", "GirlswithGlasses", "Stockingtops", "redheads", "dykesgonewild", "tits", "Unexpected", "bananatits", "BeautifulTitsAndAss", "happygirls", "nipples", "tightdresses", "gorgeousgirls", "ProCheerleaders", "Brunette", "JuicyAsians", "BreastEnvy", "Aprons", "Boobs", "gonwildcurvy", "HandBra", "camporn", "Pantyfetish", "pantyhosedgirls", "assinthong", "laundryday", "cfnf", "hairbra", "Reflections", "girlswithneonhair", "MetArt", "LegalTeens", "bustier", "Tanlines", "NoTorso", "nsfwcelebgifs", "bathing", "Slimgirls", "BookNymphs", "NaturalRed", "bathtubs", "FireCrotch", "Lordosis", "Girlswithtoys", "AmateurGFS", "SexyGirlsInJeans", "GoneMild", "doggystyle", "facedownassup", "gonewildhairy", "momsgonewild", "collegeslut", "LabiaGW", "chubby", "asiannsfw", "TumblrPorn", "realasians", "NSFW_ASIAN", "facialfun", "blowjobs", "facial", "FlexiGirls", "amateurteen", "JuicyAsian", "pussy", "drunkgirls", "torpedotits", "NutsBabes", "hugenaturals‎", "heavyhangers", "titfuck‎", "Amateur", "womenofcolorXXX", "hugeboobs‎", "bustypetite", "nipples‎", "boyshort", "virginsGW", "vixen", "Armpits", "nsfwskirts", "Erotic_Galleries", "hairy", "flexi", "ThickAsians", "AsianAmateurGirls", "chubbyasians", "asstastic", "GWCurvy", "gonewildcurvy", "BBWGW‎", "SexyHalfAsians", "DirtyAsian", "AsianChicks", "NudeAsia", "NSFWet", "asianhotbabes", "AsiansinBikinis", "sexyasiangirls", "realasianbabes", "bustyasians", "asianass", "AsianPee", "asianbabes", "asianfacials", "scatporn", "BDSMGW", "kinky", "adultcontent", "Pee", "peegonewild", "kuff", "Saggy", "TheUnderboob", "veins", "VaginaCaressing", "badmothers", "snapchatsluts", "PinkandBare", "GoneWildHairy", "TheLandingStrip", "datgrip", "CreamFilled", "PerfectPussies", "PublicUpskirts", "ButterflyWings", "TINYlips", "puffypussy", "peachlips", "labiaplasty", "LovelyLabia", "datass", "cameltoe", "cameltoepics", "JapanSluts", "GushingGirls", "Amateur_Bitches", "slutbusty", "bridesluts", "AmateurGirlsNaked", "FacebookCleavage", "SUMMERtimeheat", "CollegeInitiation", "groupofnudegirls", "cleavage", "RealAsians", "realdownblouse", "EpicCleavage", "sideboob", "WouldYouFuckMyWife", "knuckledeepinpublic", "NudeForPublic", "exposedinpublic", "normalnudes", "pinupstyle", "LadiesGoneWild", "NudeBeach", "PervyCurvy", "nsfwnonporn", "unrealgirls", "girlsinyogapants", "FabHard", "AnalInk", "StandingAsshole", "Gravure", "creampies", "javure", "babes", "WhatFollyTheatre", "ShavedGirls", "nyannekochan", "PacificGirls", "pantyselling", "SpreadEm", "BustyPetite", "PerfectBabes", "UnrealGirls", "beef_flaps", "ButtsAndBareFeet", "altgonewild", "FapHard", "FMK_Purists", "fuckmarryorkill", "xray", "w4b", "thickloads", "PuffyNipples", "BurstingOut", "QualityNsfw", "girlsinanklesocks", "hipcleavage", "AgedBeauty", "ribcage", "SnorkelPorn", "TwinGirls", "clothedwomen", "Nsfw_Interesting_Gifs", "pornid", "PussyFlashing", "NotSafeForNature", "changingrooms", "AmateurAllure", "SillyGirls", "AsianHottiesGIFS", "pornpedia", "SelfshotAsians", "YesSheSquats", "AmateurAsianGirls", "IndianTeens", "FrenchesMILFs", "Vulva", "AnnoyedToBeNude", "pubephillia", "pasties", "HomegrownTits", "thatrearview", "Milf_Pics", "NoTop", "StraightGirlsPlaying", "onoffcollages", "Butterflywings", "bigclit", "hardcoreaww", "RealChinaGirls", "serafuku", "eurogirls", "scandinaviangirls", "bdsmgw", "ANALGW", "whatcouldgowrong", "MilitaryPorn", "masterofanal", "stockingmatures", "hungrybutts", "preggoporn", "cuckoldpregnancy", "coldporn", "whywouldyoufuckthat", "themedumps", "anal_addiction", "nsfw_wtf", "NordicWomen", "CougarsAndCubs", "festivalsluts", "withoutaclue", "RandomSexyGifs", "Breeding", "gwinsertions", "WhoreCams", "NSFW_HTML5", "sauna_nsfw", "AmateursKing", "insertions", "asslick", "dickgirls", "punny", "pussyflashing", "musclesgonewild", "confusedboners", "nsfwfunny", "CumHaters", "FacialFun", "thinchickswithtits", "FineLadies", "FoxTails", "gettingherselfoff", "hiddengirls", "traps", "peehole", "Asiannipples", "saggy", "airboobs", "painal", "oldenporn", "tittydrop", "thicklogic", "amateursking", "subwife", "cougarxxx", "onlyblondes", "fap_folder", "CelebrityNipples", "GroupsGoneWild", "nsfwsnaps", "straightgirlsplaying", "girlsdoingstuffnaked", "naturists", "cmnf", "realolderwomen", "SimplyNaked", "isthatCUM", "watches", "before_after_cumsluts"]

=end