require 'rspotify'

class UsersController < ApplicationController
  def spotify
    @response = Faraday.post("http://localhost:3000/#access_token=BQA-sY2cZNewBna5NU9PgcY7rmKEoKPZ2OS41o8TraSM1AcSTqPduOwW5bcrORDV3nQIE7LSKt3L57yCQH9thb8F2Sg6ZW3XYZEmMeKVFLgJZq_oXuzzuuiwsuU03Oxub3ZTqN6-7Qr00yfQpjtjzRk1VQ&refresh_token=AQBKtIbiSRAHuYgjd_aTlYHr9BCPbztiVaJLvgD1jd6atjGspoQP4bPkqRqlqEpeWInA2wy5HOihICfQpCq5dUFGQJQkwgpDrQGo_MIwVeVvkBRgGneGfdMTiJg25efNz5A")

    # ENV['access_token']
    # spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    oauth_response = User.from_omniauth(auth)
    # token =
  end
end
