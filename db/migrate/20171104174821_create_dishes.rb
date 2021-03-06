class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
