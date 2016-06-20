class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :unit      
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
