class HomeController < ApplicationController
  def index
    @products = Product.all.map{ |product| ProductDecorator.new(product) }
  end
end
