require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :department
      t.string :description
      t.string :brand
      t.date   :serving_size
      t.float :protein_box
      t.float :carb_box
      t.float :milk_box
      t.integer :store_id
    end

  end
end
