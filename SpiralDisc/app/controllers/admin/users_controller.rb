class Admin::UsersController < ApplicationController

	layout 'application.html 2'

  def index
  	@users = User.all
  end

  def show
  end
end
