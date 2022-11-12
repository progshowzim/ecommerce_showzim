class HomeController < ApplicationController
  def index
    @products = Product.all
  end
end
