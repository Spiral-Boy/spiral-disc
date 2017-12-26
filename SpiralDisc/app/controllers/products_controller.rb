class ProductsController < ApplicationController
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
		@music_all_time = 0
		@genres = Genre.all
	end

	private

	def product_params
	  params.require(:product).permit(:genre_id, :artist_name, :product_name, :image, :price, :info, :stock, :release_date, :label, { discs_attributes: [:disc_number, :disc_name, { musics_attributes: [:music_number, :music_name, :music_time] }] })
	end
end
