class CreateItemMaterial < ActiveRecord::Migration
  def change
    create_table :item_materials do |t|
      t.integer :item_id
      t.integer :material_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
