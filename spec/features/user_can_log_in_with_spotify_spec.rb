require 'rails_helper'

describe 'spotify login' do
  it 'user can login with spotify oauth' do
#     As a visitor
      # When I visit "/"
      visit '/'
      # And I click on Login (in the navbar)
      click_on "Login with Spotify"
      # Then I should be OAuthed in using Spotify
      # And I should be on "/dashboard"
      expect(current_path).to eq("/dashboard")
      # And I should see "Logged in as <YOUR_USERNAME>" in the navbar
      expect(page).to have_content("Hello, br.mhc")
      # And I should see a link for "Logout" in the navbar
      # And when I click "Logout"
      # Then I should be logged out
  end
end
