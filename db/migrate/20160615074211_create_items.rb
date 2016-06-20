class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :rank
      t.string :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
