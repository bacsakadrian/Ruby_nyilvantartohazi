class SessionsController < ApplicationController
  def create
    @user = User.authenticate params[:username], params[:password]

    if @user
      session[:user] = @user.id

      redirect_to root_path
    end
  end

  def destroy
    reset_session
  end
end