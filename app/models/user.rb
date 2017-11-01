class User < ApplicationRecord
  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.provider      = auth_info["provider"]
      new_user.uid           = auth_info["uid"]
      new_user.oauth_token   = auth_info.credentials.token
      new_user.oauth_refresh = auth_info.credentials.refresh_token
      binding.pry
    end
  end
end
