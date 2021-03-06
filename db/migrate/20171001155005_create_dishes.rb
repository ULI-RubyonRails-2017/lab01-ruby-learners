class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.string :section
      t.string :string
      t.string :cuisine
      t.string :img
      t.float :price

      t.timestamps
    end
  end
end
