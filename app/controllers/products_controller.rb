class ProductsController < ApplicationController
    def index
        @products = Product.all
        @categories = Category.all
    end
    def show
        @product = Product.find(params[:id])
        @products = Product.all.limit(3)
    end
end
