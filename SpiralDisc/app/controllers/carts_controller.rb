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
		
	end

	def update
		
	end
end
