class ProductsController < ApplicationController
  def index
    @products_paginated = Product.paginate page: params[:page], per_page: 15
    #@products = Product.all
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product
      flash[:notice] = "created."
    else
      4.times { @product.assets.build }
      render :action => 'new'
    end

  end

  def new
    @product = Product.new
    4.times { @product.assets.build }
  end

  def edit
    @product = Product.find(params[:id])
    4.times { @product.assets.build }
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = 'Product was successfully updated'
      redirect_to @product
    else
      render :action => 'edit'
      false
    end
  end

  def show
    @product=Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "deleted."
      redirect_to products_path
    end
  end

  private

  def find_all_products
    @products = Product.all
  end

  def find_product_with_id
    @product = Product.find(params[:id])
  end
end