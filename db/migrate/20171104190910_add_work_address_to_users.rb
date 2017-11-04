class AddWorkAddressToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :work_address, :string
  end
end
