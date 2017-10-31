class SessionsController < ApplicationController
  def create
    @response = request.env['omniauth.auth']
    provider = @response["provider"]
    uid = @response["uid"]
    oauth_token = @response["credentials"]["token"]
    oauth_refresh = @response["credentials"]["refresh_token"]
    binding.pry
  end
end
