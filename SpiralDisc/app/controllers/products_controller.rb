class ProductsController < ApplicationController
	def index
		@products = Product.all
		@products = Product.page(params[:page]).reverse_order
		@products = if params[:search]
			@products = Product.search(params[:search]).page(params[:page]).reverse_order
		else
			Product.page(params[:page]).reverse_order
		end

	def show
		
	end
end
