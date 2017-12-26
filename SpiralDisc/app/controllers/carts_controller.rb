class CartsController < ApplicationController

	def index
		@user = User.find(current_user.id)
		@carts = @user.carts
  		@total_price = 0
  		@carts.each do |cart|
  			@total_price += cart.price
  		end
	end

	def create
		@cart = current_user.carts.new(cart_params)
		@cart.save
		redirect_to user_carts_path(current_user)

	end

	def update
		 @cart = Cart.find(params[:id])
		 @cart.update(cart_params)
		 @cart.price = @cart.product.price * @cart.quantity
		 @cart.save
		 redirect_to user_carts_path(current_user)
	end

	def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy
		redirect_to user_carts_path(current_user.id)
	end

	private

	def cart_params
	  params.require(:cart).permit(:id, :user_id, :product_id, :quantity, :price, :price)
	end
end
