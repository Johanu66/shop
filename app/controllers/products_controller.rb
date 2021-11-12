class ProductsController < ApplicationController
    def index
        @products = Product.all
        @categories = Category.all
    end
    def show
        @product = Product.find(params[:id])
        @products = Product.where(category_id: @product.category).limit(3)
    end
    def filter
        @products = Product.where(category_id: params[:category])
        @categories = Category.all
        render :index
    end
end
