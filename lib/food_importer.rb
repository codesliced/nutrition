require_relative '../app/models/food'

module FoodImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/food_one.csv")
    field_names = nil
    Food.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          food = Food.create!(attribute_hash)
        end
      end
    end
  end
end
