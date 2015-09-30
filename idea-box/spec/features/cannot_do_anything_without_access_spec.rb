require "rails_helper"

feature "User cannot create a new idea" do
  scenario "if not logged in." do
    visit new_idea_path

    expect(page).to have_content("MUST BE LOGGED IN STINNETTE")
  end
end
