class CartsController < ApplicationController
    before_action :authenticate_user!
    def create
        @cart = Cart.new(product_id: params[:product_id], user_id: current_user.id)
        @cart.update(sum_price: Product.find(params[:product_id]).price)
        @cart.save
        redirect_to products_path
    end
    def index
        @carts = Cart.where(user: current_user).order(created_at: :desc)
    end
    def update
        @cart = Cart.find(params[:id])
        if @cart.update(number_product: cart_params[:number_product], sum_price: (@cart.product.price*cart_params[:number_product].to_i))
          flash[:success] = "Object was successfully updated"
          redirect_to carts_path
        else
          flash[:error] = "Something went wrong"
          redirect_to carts_path
        end
    end
    def destroy
        @cart = Cart.find(params[:id])
        if @cart.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to carts_path
        else
            flash[:error] = 'Something went wrong'
            redirect_to carts_path
        end
    end
    
    private
    
    def cart_params
        params.require(:cart).permit(:number_product)
    end
    
end
