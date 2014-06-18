class TagsController < ApplicationController
  
  
  def show
    @tag = Tag.find_by_id params[:id]
    
    result = @tag.extract_content( params[:after] )
    @pics = result[0]
    @last_reddit_id = result[1]
    
  end
end
