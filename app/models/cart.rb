class Cart < ApplicationRecord
  belongs_to :user
  has_many :selected_dishes
  has_many :dishes, through: :selected_dishes
end
