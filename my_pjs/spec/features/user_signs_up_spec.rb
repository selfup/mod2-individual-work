require "rails_helper"

feature "User signs up" do
  scenario "with valid attributes." do
    visit "/signup"
    expect(current_path).to eq("/signup")

    fill_in "Name", with: "clarence"
    fill_in "Email", with: "clarence@example.com"
    fill_in "Password", with: "password"
    click_on "Sign up"

    expect(current_path).to eq("/profile")

    within ".profile-info" do
      expect(page).to have_content("clarence")
    end
  end

  xscenario "with missing email." do
  end
end
