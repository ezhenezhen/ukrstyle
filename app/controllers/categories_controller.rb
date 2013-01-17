class CategoriesController < ApplicationController
  require 'will_paginate/array'
  def show
    @all_products = Product.find_all_by_general_type_id(params[:id])
    @products_paginated = @all_products.paginate page: params[:page], per_page: 15
  end
end