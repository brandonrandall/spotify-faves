class DashboardController < ApplicationController
  def index
    # Use Spotify Follow features
    binding.pry
    @top_artists = spotify_user.top_artists
    spotify_user.follow(playlist)
    spotify_user.follows?(artists)
    spotify_user.unfollow(users)

    # Get user's top played artists and tracks
    spotify_user.top_artists #=> (Artist array)
    spotify_user.top_tracks(time_range: 'short_term') #=> (Track array)



  end
end
