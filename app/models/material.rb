class Material < ActiveRecord::Base
  has_many :items_materials
  has_many :items, through: :item_materials
end
