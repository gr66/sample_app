require "rails_helper"

RSpec.feature "StaticPages", :type => :feature do
  scenario "should have the content 'Sample App" do
    visit "/static_pages/home"

    expect(page).to have_text("Sample App")
  end
end
