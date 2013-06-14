class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :tag_id 
      
      t.string :reddit_url 
      t.string :content_url
      
      t.string :reddit_title 
      t.string :reddit_author 
      
      t.string :reddit_name
       
      
      

      t.timestamps
    end
  end
end
