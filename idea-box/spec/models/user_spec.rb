require 'rails_helper'

describe User do
  let(:valid_attributes) {
    { username: "clarence", password: "password" }
  }

  let(:user) {
    User.create(valid_attributes)
  }

  it "has a username" do
    expect(user.username).to eq("clarence")
  end

  it "has a password" do
    expect(user.authenticate(user.password)).to eq(user)
  end

  it "won't create a user without a username" do
    user.username = nil

    expect(user).to be_invalid
  end

  it "won't create a user without a password" do
    user.password = nil

    expect(user).to be_invalid
  end

  it "successfully adds a user to the database" do
    expect(user.username).to eq("clarence")
    expect(User.count).to eq(1)
  end

  it "has a default admin value of false" do
    expect(user.admin).to eq(false)
  end

  # do not check against a plain text password
  #test that it is authentic and that it returns the user object
end
