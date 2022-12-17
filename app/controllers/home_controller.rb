class HomeController < ApplicationController
  def index
    @products = Product.all.map { |product| ProductPresenter.new(product) }
  end
end
