class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show

    @product = Product.find(params[:id])
<<<<<<< HEAD
    respond_to do |format|
  format.html
  format.json {render json: @product }
end
=======
    render json: @product
>>>>>>> e7b100c7f81f3c57b8b5107cc2855e492c11155d
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
