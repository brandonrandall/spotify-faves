class DashboardController < ApplicationController
  def index
    @spotify_connection = Faraday.get(url: "https://api.spotify.com")
    # @top_artists = spotify_user.top_artists
    top_tracks = ("/v1/me/top/artists")
    # spotify_user.follow(playlist)
    # spotify_user.follows?(artists)
    # spotify_user.unfollow(users)

    # Get user's top played artists and tracks
    # spotify_user.top_artists #=> (Artist array)
    album_results = RSpotify::Album.search("The Eminem Show")
    artist = album_results.first.artists.first.name
    # @playlists = []
    # test_playlist = spotify_user.create_playlist!('test')
    # @playlists.push(test_playlist.name)
    # spotify_user.top_tracks(time_range: 'short_term') #=> (Track array)
    # @top_ten_artists =
    @top_artist = Faraday.get(url: "https://api.spotify.com/v1/me/top/artists&client_id=#{}&client_secret=")
    binding.pry
  end
end
