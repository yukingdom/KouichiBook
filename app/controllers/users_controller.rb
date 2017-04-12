class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end
  
  def delete
  	@user = User.find(params[:id])
	@user.destroy
	redirect_to new_user_session_path
  end

end
