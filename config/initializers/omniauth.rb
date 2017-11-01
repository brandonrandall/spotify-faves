# require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["client_id"], ENV["client_secret"], scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end

# keys = Rails.application.secrets

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :spotify, keys.spotify['07c1b959c80e433fb6a16737792f1aca'], keys.spotify['61ffb9c947744dbfa882c733131e2f39'], scope: 'playlist-read-private user-read-private user-read-email'
# end
