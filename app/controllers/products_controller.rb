class ProductsController < ApplicationController
  before_filter :find_product_with_id, :only => :show, :only => :edit, :only => :show

  def index
    @products = Product.paginate page: params[:page], per_page: 3
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product
      flash[:notice] = "created."
    else
      render :action => 'new'
    end
    4.times { @product.assets.build }
  end

  def new
    @product = Product.new
    4.times { @product.assets.build }
  end

  def edit
    4.times { @product_new.assets.build }
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def find_all_products
    @products = Product.all
  end

  def find_product_with_id
    @product = Product.find(params[:id])
  end
end