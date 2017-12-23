class OrdersController < ApplicationController

	def create
		@carts = current_user.carts
  		@total_price = 0
  		@carts.each do |cart|
  			@total_price += cart.price
  		end
  		@order = current_user.orders.new
  		@order.all_price = @total_price
  		@order.send_street_address = current_user.street_address
  		@order.status = "未出荷"
  		@order.save
  		@carts.each do |cart|
	  		@order_product = @order.order_products.new
	  		@order_product.product_id = cart.product_id
	  		@order_product.quantity = cart.quantity
	  		@order_product.price = cart.price
	  		@order_product.save
	  	end
	  	@carts.destroy_all
	  	redirect_to user_path(current_user.id), flash: {notice: '注文しました。'}
	end
end
