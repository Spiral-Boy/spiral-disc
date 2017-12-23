class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@orders = @user.orders.page(params[:page]).reverse_order
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
    	if @user.update(user_params)
    		redirect_to user_path, flash: {notice: '登録情報を編集しました。'}
    	else
    		render :edit
    	end
	end

	private
		def user_params
			params.require(:user).permit(:name, :name_kana, :postal_code, :street_address, :phone_number, :email, :password)
		end
end
