class Pic < ActiveRecord::Base
  attr_accessible :post_id, :url, :is_gif
  belongs_to :post 
  
  def self.is_gif_url?(url)
    result  = url.match /\.gif/
    
    if result 
      return true
    else
      return false 
    end
  end
end
