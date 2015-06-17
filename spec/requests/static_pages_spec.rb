require "rails_helper"

RSpec.feature "StaticPages", :type => :feature do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
  describe "Home page" do
    scenario "should have the content 'Sample App" do
      visit root_path

      expect(page).to have_text("Sample App")
    end
    it "should have the right title" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    scenario "should have the content 'Help'" do
      visit root_path
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    scenario "should have the content 'About us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    scenario "should have the content 'Countact'" do
      visit contact_path
      #expect(page).to have_content('Contact')
      expect(page).to have_selector('h1', text: 'Contact')
    end
    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
      # page.should have_selector('title', text: "#{base_title} | Contact")
    end
  end
end
