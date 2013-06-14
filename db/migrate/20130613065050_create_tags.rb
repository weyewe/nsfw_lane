class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name 
      
      t.string :last_parsed_reddit_name 

      t.timestamps
    end
  end
end
