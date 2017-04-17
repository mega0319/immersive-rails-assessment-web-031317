class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if params[:user][:password] != params[:user][:password_confirmation]
      flash[:message] = "Password confirmation does not match. Please try again."
      redirect_to new_user_path
    else
      @user = User.new(user_params)
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def show
    authorize
    @guest_episodes = GuestEpisode.all
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
