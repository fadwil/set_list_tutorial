require 'rails_helper'

RSpec.describe 'the songs index page', type: :feature do  
  # As a user
  # When I visit the songs index ("/songs")
  # Then I see a header "All Songs"
  describe "When I visit the songs index" do
    it "Then I see a header All Songs" do
      visit "/songs/"

      expect(page).to have_content("All Songs")
    end
  end

  describe 
end