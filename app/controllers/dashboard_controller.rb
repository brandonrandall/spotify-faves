class DashboardController < ApplicationController
  def index
    @top_artists = spotify_user.top_artists
    # spotify_user.follow(playlist)
    # spotify_user.follows?(artists)
    # spotify_user.unfollow(users)

    # Get user's top played artists and tracks
    # spotify_user.top_artists #=> (Artist array)
    @playlists = []
    test_playlist = spotify_user.create_playlist!('test')
    playlists.push(test_playlist.name)
    spotify_user.top_tracks(time_range: 'short_term') #=> (Track array)
    binding.pry



  end
end
