require 'rails_helper'

describe User do
  let(:valid_attributes) {
    { name: "clarence", email: "clarence@example.com", password: "password" }
  }

  let(:user) {
    User.create(valid_attributes)
  }

  it "has a name" do
    expect(user.name).to eq("clarence")
  end

  it "has an email" do
    expect(user.email).to eq("clarence@example.com")
  end

  it "has a password" do
    expect(user.authenticate(user.password)).to eq(user)
  end

  # do not check against a plain text password
  #test that it is authentic and that it returns the user object
end
