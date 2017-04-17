
class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(password: params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "Password or Name incorrect. Try again."
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end
end
