class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def authorize
    unless logged_in?
      flash[:notice] = "Sorry, you must be logged in to do that!"
      redirect_to new_session_path
    end
  end

  def logged_in?
    session[:user_id].present?
  end
end
