require 'rubygems'
require 'nokogiri'
require 'open-uri'



class Post < ActiveRecord::Base
  attr_accessible :tag_id, :reddit_url, :content_url, :reddit_title , 
                  :reddit_author, :reddit_name 
                  
                  
  belongs_to :tag 
  has_many :pics 
  
  
  def self.is_direct_image_link?(url)
    matching = url.match /\.(svg|jpe?g|png|gif)(?:[?#].*)?$|(?:imgur\.com|www.quickmeme\.com\/meme|qkme\.me)\/([^?#\/.]*)(?:[?#].*)?(?:\/)?$/ 
      
    if (matching and matching[1])   # // normal image link
      return true
    else
      return false 
    end
  end
  
  def self.create_with_direct_image_link( tag, post_data ) 
    
    post  = Post.create :tag_id => tag.id , 
                :reddit_url => post_data['data']['permalink'],
                :content_url => post_data['data']['url'],
                :reddit_title => post_data['data']['title'],
                :reddit_author => post_data['data']['author'],
                :reddit_name => post_data['data']['name']
    
    Pic.create :post_id => post.id ,
                :url => post_data['data']['url'],
                :is_gif => Pic.is_gif_url?(post_data['data']['url'])
    
  end
  
  def self.extract_image_url_from_indirect_link( url ) 
    begin
      
      page = Nokogiri::HTML(open( params[:url]  ))  
      
      if params[:url] =~ /imgur.com/
        
        if( page.css("#image-container").length == 0 )
          if( page.css("#image").length != 0 )
            result = page.css("#image img")
            images = result.map {|x| x['src'] }
          else
            result = page.css("#content div.main-image img")
            images = result.map {|x| x['src'] }
          end
        else
          result = page.css("#image-container img")
          images = result.map {|x| x['data-src'] }
        end
        
      elsif params[:url] =~ /weluvporn.com/
        
        if( page.css('.pictureImage img').length != 0  )
          result = page.css('.pictureImage img')
          images = result.map {|x| x['src'] }
        else
          result = page.css('#wlt-PictureOriginal img')
          images = result.map {|x| x['src'] }
        end
 
      elsif params[:url] =~ /thefreefap.com/
        
        result = page.css('.pictureImage img')
        images = result.map {|x| x['src'] }
 
      elsif params[:url] =~ /subimg.net/
        
        result = page.css('img.magnify')
        images = result.map {|x| x['src'] }
        # 
       
      elsif params[:url] =~ /imgpo.st/
        
        result = page.css('#main img')
        images = result.map {|x|   x['src'] } 
       
      elsif params[:url] =~ /imagebam.com/
        
        result = page.css('body img')
        images = result.map {|x|   x['src'] } 
        
      elsif params[:url] =~ /x3e.com/
        result = page.css('a img')
        
        if params[:url] =~ /index.php/
          images = result.map do |x| 
            puts "The source: #{x['src']}"
            puts "The url: #{params[:url]}"
            params[:url].gsub('index.php', x['src'])
            # params[:url] + x['src']
          end
        else
          images = result.map do |x| 
            puts "The source: #{x['src']}"
            puts "The url: #{params[:url]}"
            # params[:url].gsub('index.php', x['src'])
            params[:url] + x['src']
          end
        end
        
      end
      
      return images
    rescue
      return []
    end
  end
  
  def self.create_with_indirect_image_link( tag, post_data )  
    image_url_list = Post.extract_image_url_from_indirect_link( post_data['data']['url'])
    
    return if image_url_list.length == 0 
    
    post  = Post.create :tag_id => tag.id , 
                :reddit_url => post_data['data']['permalink'],
                :content_url => post_data['data']['url'],
                :reddit_title => post_data['data']['title'],
                :reddit_author => post_data['data']['author'],
                :reddit_name => post_data['data']['name']
                
    image_url_list.each do |image_url|
      Pic.create :post_id => post.id ,
                  :url => image_url,
                  :is_gif => Pic.is_gif_url?( image_url)
    end
  end
end
