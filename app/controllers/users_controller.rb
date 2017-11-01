require 'rspotify'

class UsersController < ApplicationController
  def spotify
    # callback = "http://loclhost:3000/auth/spotify/callback/"
    # @response = Faraday.post("#{callback}#access_token=BQA-sY2cZNewBna5NU9PgcY7rmKEoKPZ2OS41o8TraSM1AcSTqPduOwW5bcrORDV3nQIE7LSKt3L57yCQH9thb8F2Sg6ZW3XYZEmMeKVFLgJZq_oXuzzuuiwsuU03Oxub3ZTqN6-7Qr00yfQpjtjzRk1VQ&refresh_token=AQBKtIbiSRAHuYgjd_aTlYHr9BCPbztiVaJLvgD1jd6atjGspoQP4bPkqRqlqEpeWInA2wy5HOihICfQpCq5dUFGQJQkwgpDrQGo_MIwVeVvkBRgGneGfdMTiJg25efNz5A")
    @response = Faraday.get("https://accounts.spotify.com/en/authorize?response_type=code&client_id=07c1b959c80e433fb6a16737792f1aca&scope=user-read-private%20user-read-email&redirect_uri=http:%2F%2Flocalhost:8888%2Fcallback%2F&state=CE55gfIIYAlLJ9k9")
    # auth = request.env['omniauth.auth'].credentials
    binding.pry
    # ENV['access_token']
    # spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # oauth_response = User.from_omniauth(auth)
    # token =
  end
end
