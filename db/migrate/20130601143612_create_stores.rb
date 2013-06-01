require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
    end
  end
end
