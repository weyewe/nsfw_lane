=begin
# morning tag: Hotchickswithtattoos  hairbra, HandBra ,
  tits, 
  girlsontheirbacks, selfshots, downblouse , hairypussy , GroupOfNudeGirls , Smallnipples, FuckMarryorKill, 
  shewantstofuck ,  , upskirt , cellshots , randomsexiness , EWITB, Mooning, Public , onoffceleb, 
  nippleripple, cat_girls, iWantToFuckHer , agedlikefinewine, treatemright , RealGirls, GonewildAlbums, gonewildhairy,
  PublicFlashing, happygaps, GirlsOnToilets,collegesluts,  CollegeAmateurs, nsfw_young, 
  , Upskirt, toplessamateurs, perfectbabes, 
  curvy,  gonewild, 
  
#awesome morning
  nsfw, Nipslips, DrunkGirls, OnOff, nipples, laundryday, happygirls, Christiangirls,
  camwhores, HappyEmbarrassedGirls,FlashingGirls
  
#awesome afternoon
  cougars, milf , MatureWomen, Unashamed, 
  
#awesome evening
O_Faces, openholes, pink, vagina, analholes, gape, cumsluts, buttsharpies, 
  



#
  grool, Stacked, weddingringsshowing , hotwife, Tushy,  TheHangingBoobs, wifesharing,
  momsgonewild, femalesgonewild, SpreadEagle, 
  
  
  
  
  
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
  end
  
   


  
end
