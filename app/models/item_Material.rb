class ItemMaterial < ActiveRecord::Base
  has_many :items
  has_many :materials
end
