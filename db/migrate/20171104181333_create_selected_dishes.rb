class CreateSelectedDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :selected_dishes do |t|
      t.references :dish, foreign_key: true
      t.references :cart, foreign_key: true
      t.text :aditional_info

      t.timestamps
    end
  end
end
