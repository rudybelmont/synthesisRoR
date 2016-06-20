# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Material.create(name: 'Salt', unit: 'tbsp', quantity: 50)
Material.create(name: 'Sugar', unit: 'tbsp', quantity: 50)
Material.create(name: 'Epson Salts', unit: 'tbsp', quantity: 50)
Material.create(name: 'Hot Water', unit: 'tbsp', quantity: 50)
Material.create(name: 'Water', unit: 'unit', quantity: 50)
Material.create(name: 'Green Food Coloring', unit: 'bttl', quantity: 50)
Material.create(name: 'Red Food Coloring', unit: 'bttl', quantity: 50)
Material.create(name: 'Blue Food coloring', unit: 'bttl', quantity: 50)

Item.create(name: 'Salt Crystals', rank: 'B', description: 'Salt:5; Hot water:6; Green Food Coloring', status: true)
Item.create(name: 'Sugar Crystals', rank: 'B', description: 'Suger:12; Hot water:5; Red Food Coloring', status: true)
Item.create(name: 'No 3', rank: 'C', description: 'Epsom Salts:5; Water:6; Blue Food Coloring', status: true)
Item.create(name: 'Alum Crystals', rank: 'S', description: '', status: false)

#ItemMaterial.create(item_id: 1, material_id: 1, quantity: 5)
#ItemMaterial.create(item_id: 1, material_id: 4, quantity: 6)
#ItemMaterial.create(item_id: 1, material_id: 6, quantity: 1)
#ItemMaterial.create(item_id: 2, material_id: 1, quantity: 12)
#ItemMaterial.create(item_id: 2, material_id: 4, quantity: 5)
#ItemMaterial.create(item_id: 2, material_id: 7, quantity: 1)
#ItemMaterial.create(item_id: 3, material_id: 3, quantity: 5)
#ItemMaterial.create(item_id: 3, material_id: 5, quantity: 6)
#ItemMaterial.create(item_id: 3, material_id: 8, quantity: 1)
