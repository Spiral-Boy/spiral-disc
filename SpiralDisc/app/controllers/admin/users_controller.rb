class Admin::UsersController < ApplicationController

	layout 'application.html 2'

  def index
	@users = if params[:search]
		@users = User.search(params[:search]).page(params[:page]).reverse_order
	else
		User.page(params[:page]).reverse_order
	end
  end

  def show
  	@user = User.find(params[:id])
  end
end
