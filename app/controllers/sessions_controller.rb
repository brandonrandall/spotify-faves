class SessionsController < ApplicationController
  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      session[:spotify_user] = request.env["omniauth.auth"]
    end
    redirect_to dashboard_index_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
