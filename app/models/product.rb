
class Product < ApplicationRecord
  validates :name, :description, :price, presence: true
  has_many :cart_items, dependent: :destroy
end
