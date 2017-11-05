class AddUserToSelectedDishes < ActiveRecord::Migration[5.1]
  def change
    add_reference :selected_dishes, :user, foreign_key: true
  end
end
