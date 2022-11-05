class Product < ApplicationRecord
  belongs_to :category

  validates :name, :description, :price, presence: true
end
