class GuestEpisodesController < ApplicationController

  def index
  end

  def new
    @guests = Guest.all
    @episodes = Episode.all
    @guest_episode = GuestEpisode.new
  end

  def create
    @user = User.find(session[:user_id])
    @guest_episode = GuestEpisode.new(guest_episode_params)
    @guest_episode.save
    redirect_to user_path(@user)
  end

  def show
  end

  def guest_episode_params
    params.require(:guest_episode).permit(:guest_id, :episode_id, :rating)
  end

end
