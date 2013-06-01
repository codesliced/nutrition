require_relative '../../db/config'

class Food < ActiveRecord::Base
  belongs_to :store

  def assign_tj_id
    Food.all.each { |food| food.update_attributes(:store_id => 1)}
  end

  def assign_wf_id
    Food.all.each { |food| food.update_attributes(:store_id => 2)}
  end

end
