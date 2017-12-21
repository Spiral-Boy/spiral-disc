class Admin::UsersController < ApplicationController

	layout 'application.html 2'
	before_action :authenticate_admin!

  def index
	@users = if params[:search]
		@users = User.search(params[:search]).page(params[:page]).reverse_order
	else
		User.page(params[:page]).reverse_order
	end
  end

  def show
  	@user = User.find(params[:id])
  	@orders = @user.orders.page(params[:page]).reverse_order
  	@total_price = 0
  	@orders.each do |order|
  		@total_price += order.all_price
  	end
  end
end
