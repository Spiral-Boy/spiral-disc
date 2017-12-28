class Admin::ProductsController < ApplicationController

	layout 'application.html 2'
	before_action :authenticate_admin!

	def new
		@pro = Product.new
		@pro.discs.build
		@pro.discs.first.musics.build
		@genres = Genre.all
	end

	def create
		@pro = Product.new(product_params)
		if @pro.save
			redirect_to admin_products_path, flash: {notice: '商品を作成しました。'}
		else
			render :new
		end
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
    	if @pro.update(update_product_params)
    		redirect_to admin_products_path, flash: {notice: '商品を編集しました。'}
    	else
    		render :edit
    	end
  	end

  	def destroy
    	@pro = Product.find(params[:id])
    	@pro.destroy
    	redirect_to admin_products_path, flash: {notice: '商品を削除しました。'}
 	end

	private

	def product_params
	  params.require(:product).permit(:id, :genre_id, :artist_name, :product_name, :image, :price, :info, :stock, :release_date, :product_delete, :label, { discs_attributes: [:id, :disc_number, :disc_name, :_destroy, { musics_attributes: [:id, :music_number, :music_name, :music_time, :_destroy] }] })
	end

	def update_product_params
	  params.require(:product).permit(:genre_id, :artist_name, :product_name, :image, :price, :info, :stock, :release_date, :product_delete, :label, { discs_attributes: [:disc_number, :disc_name, :_destroy, :id, { musics_attributes: [:music_number, :music_name, :music_time, :_destroy, :id] }] })
	end
end
