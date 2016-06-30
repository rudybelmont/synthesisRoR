class Item < ActiveRecord::Base  
  has_many :items_materials
  has_many :materials, through: :item_materials

  mount_base64_uploader :picture, ImageUploader
end
