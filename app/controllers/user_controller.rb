class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(my_params)
    if @user.save 
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def my_params
      params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
