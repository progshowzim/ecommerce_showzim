class ProductPolicy < ApplicationPolicy
  def new?
    Category.count.positive?
  end
end
