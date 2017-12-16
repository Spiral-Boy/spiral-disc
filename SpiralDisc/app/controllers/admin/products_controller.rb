class Admin::ProductsController < ApplicationController
	layout 'application.html 2'

	def new
		@pro = Product.new
	end

	def create
		@pro = Product.new(product_params)

	def index
	end

private
	def product_params
	  params.require(:product).permit(:genre_id, :rtist_name, :product_name, :image, :price, :info, :stock, :release_date, :product_delete, :label)
	end
end
