class Backstage::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @products = Backstage::Product.all
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Backstage::Product.new
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Backstage::Product.new(product_params)
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = Backstage::Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :price, :description, :available)
    end
end
