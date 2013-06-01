require_relative '../../db/config'

class Store < ActiveRecord::Base
  has_many :foods
end
