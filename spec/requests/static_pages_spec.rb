require "rails_helper"

RSpec.feature "StaticPages", :type => :feature do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App |' }
  describe "Home page" do
    scenario "should have the content 'Sample App" do
      visit "/static_pages/home"

      expect(page).to have_text("Sample App")
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} Home")
    end
  end

  describe "Help page" do
    scenario "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} Help")
    end
  end

  describe "About page" do
    scenario "should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} About Us")
    end
  end

  describe "Contact page" do
    scenario "should have the content 'Countact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} Contact")
    end
  end
end
