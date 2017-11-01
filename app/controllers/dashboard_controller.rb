class DashboardController < ApplicationController
  def index
    @spotify_connection = Faraday.new(url: "https://api.spotify.com/")
    # response = Faraday.get(url: "/v1/me/top/artists#{ENV["client_id"]}#{ENV["client_secret"]}")
    # parsed = JSON.parse(response.body)
    # @top_artists = spotify_user.top_artists
    # top_tracks = ("/v1/me/top/artists")
    # spotify_user.top_artists #=> (Artist array)
    album_results = RSpotify::Album.search("The Eminem Show")
    artist = album_results.first.artists.first.name
  end
end
