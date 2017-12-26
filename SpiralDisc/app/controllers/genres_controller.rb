class GenresController < ApplicationController
  def show
	@genres = Genre.all
	@genre = Genre.find(params[:id])
	@products = if params[:search]
		@products = @genre.products.search(params[:search]).page(params[:page]).reverse_order
	else
		@genre.products.page(params[:page]).reverse_order
	end
  end
end
