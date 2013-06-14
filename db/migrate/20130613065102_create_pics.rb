class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.boolean :is_gif, :default => false 
      t.string :url 
      t.integer :post_id 

      t.timestamps
    end
  end
end
