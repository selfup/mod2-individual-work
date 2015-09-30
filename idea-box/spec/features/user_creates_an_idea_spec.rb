require "rails_helper"

feature "User signs up and creates an idea" do
  scenario "with valid attributes." do
    visit "/signup"

    fill_in "Username", with: "clarence"
    fill_in "Password", with: "password"
    click_on "Sign up"

    visit new_idea_path
    expect(current_path).to eq(new_idea_path)

    fill_in "Title", with: "Test"
    fill_in "Description", with: "Testing: 1, 2, 3."
    click_on "Create Idea"

    expect(current_path).to eq("/profile")

    expect(page).to have_content("Test")
    expect(page).to have_content("Testing: 1, 2, 3")
  end
end
