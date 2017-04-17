class GuestsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @guests = Guest.all
  end



  def show
    @guest = Guest.find(params[:id])
  end
end
