class Admin::DiscsController < ApplicationController

	private

	def disc_params
	  params.require(:disc).permit(:disc_name, :disc_number)
	end
end
