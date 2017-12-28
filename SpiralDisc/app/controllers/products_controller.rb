class ProductsController < ApplicationController

	before_action :authenticate_user!, only: [:show]

	def index
		@products = Product.all
		@products = Product.page(params[:page]).reverse_order
		@genres = Genre.all
		@products = if params[:search]
			@products = Product.search(params[:search]).page(params[:page]).reverse_order
		else
			Product.page(params[:page]).reverse_order
		end
	end

	def show
		@product = Product.find(params[:id])
		@discs = @product.discs
	  	@total_music = 0
	  	@discs.each do |disc|
	  		@total_music += disc.musics.count
	  	end
		@genres = Genre.all
		@cart = current_user.carts.new
	end

	private

	def product_params
	  params.require(:product).permit(:genre_id, :artist_name, :product_name, :image, :price, :info, :stock, :release_date, :label, { discs_attributes: [:disc_number, :disc_name, { musics_attributes: [:music_number, :music_name, :music_time] }] })
	end
end
