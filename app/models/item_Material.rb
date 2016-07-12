class ItemMaterial < ActiveRecord::Base
  belongs_to :items
  belongs_to :materials
end
