require "rails_helper"

feature "User can logout" do
  scenario "after logging in" do
    user = User.create(username: "wow", password: "omg")
    visit login_path

    expect(current_path).to eq(login_path)

    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_on "Login"

    expect(current_path).to eq(profile_path)
    expect(page).to have_content("wow")

    click_on "Logout"
    expect(page).to have_content("Successfully logged out. Why you leave? :(")

    visit profile_path
    expect(page).to have_content("FORBIDDEN. Hacker Stinnette Detected")
  end
end
