class PostsController < ApplicationController
  def index
    
    
    
    @posts = Post.joins(:pics, :tag).page(params[:page]).per( 20 ).order("id DESC")
  end
end
