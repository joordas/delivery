class Order < ApplicationRecord
  belongs_to :cart
  has_many :selected_dishes, through: :cart
  has_many :dishes, through: :selected_dishes
end
