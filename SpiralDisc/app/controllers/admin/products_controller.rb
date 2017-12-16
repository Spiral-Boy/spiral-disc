class Admin::ProductsController < ApplicationController
	layout 'application.html 2'

	def new
		@pro = Product.new
	end






end
