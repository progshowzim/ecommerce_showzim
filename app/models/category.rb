class Category < ApplicationRecord
  validates :name, :position, presence: true
end
