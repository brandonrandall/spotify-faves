require 'rails_helper'

describe 'spotify login' do
  it 'user can login with spotify oauth' do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:spotify] = OmniAuth::AuthHash.new({
      provider: 'spotify',
      uid: "br.mhc",
      credentials:
        { oauth_token: "something",
          oauth_refresh: "secretsomething"
        }
    })
#     As a visitor
      # When I visit "/"
      visit '/'
      assert_equal 200, page.status_code
      # And I click on Login (in the navbar)
      click_on "Login with Spotify"
      # Then I should be OAuthed in using Spotify
      # And I should be on "/dashboard"
      expect(current_path).to eq("/dashboard")
      brandon = User.last
      # And I should see "Logged in as <YOUR_USERNAME>" in the navbar
      expect(page).to have_content("Get down #{brandon.uid}, wit yo spotify self!")
      # And I should see a link for "Logout" in the navbar
      click_on "Logout"
      # And when I click "Logout"
      expect(path).to eq("/root")
      expect(page).to have_content("Login with Spotify")
      # Then I should be logged out
  end
end
