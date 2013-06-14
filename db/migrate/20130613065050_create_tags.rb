class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name 
      
      t.string :last_parsed_reddit_name 
      t.integer :update_case , :default => UPDATE_CASE[:morning]

      t.timestamps
    end
  end
end
