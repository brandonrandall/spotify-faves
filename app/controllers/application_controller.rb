class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :spotify_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def spotify_user
    @spotify_user ||= RSpotify::User.new(session[:spotify_user]) if session[:spotify_user]
  end
end
