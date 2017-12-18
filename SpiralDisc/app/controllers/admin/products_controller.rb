class Admin::ProductsController < ApplicationController
	layout 'application.html 2'

	def new
		@pro = Product.new
		@pro.discs.build
		@pro.discs.each do |disc|
			disc.musics.build
			# music.save
		end
		@genres = Genre.all
	end

	def create
		@pro = Product.new(product_params)
		@pro.save
		redirect_to admin_products_path
	end

	def index
		@genres = Genre.all
		@products = if params[:search]
			@products = Product.search(params[:search]).page(params[:page]).reverse_order
		else
			Product.page(params[:page]).reverse_order
		end
	end

	def edit
		@pro = Product.find(params[:id])
	end

  	def update
    	@pro = Product.find(params[:id])
    	@book.update(product_params)
  	end

	private

	def product_params
	  params.require(:product).permit(:genre_id, :artist_name, :product_name, :image, :price, :info, :stock, :release_date, :product_delete, :label, { discs_attributes: [:disc_number, :disc_name, { musics_attributes: [:music_number, :music_name, :music_time] }] })
	end
end
