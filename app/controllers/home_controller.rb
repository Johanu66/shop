class HomeController < ApplicationController
    def index
        @products = Product.all.limit(3)
    end
    def about
    end
    def contact
    end
    def news
    end
    def checkout
        @carts = Cart.where(user: current_user)
    end
    def checkout_final
    end
end
