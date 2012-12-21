class MainController < ApplicationController
  def index
    @productsMain = Product.where(:showing => :true)
  end

  def contact
  end

  def about
  end
end
