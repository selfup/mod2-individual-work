require 'rails_helper'

describe Idea do
  let(:valid_attributes) {
    { title: "clarence", description: "Is the best" }
  }

  let(:idea) {
    Idea.create(valid_attributes)
  }

  it "has a title" do
    expect(idea.title).to eq("clarence")
  end

  it "has a description" do
    expect(idea.description).to eq("Is the best")
  end

  it "won't create a idea without a title" do
    idea.title = nil

    expect(idea).to be_invalid
  end

  it "won't create a idea without a description" do
    idea.description = nil

    expect(idea).to be_invalid
  end

  it "successfully adds a idea to the database" do
    expect(idea.title).to eq("clarence")
  end
  # do not check against a plain text password
  #test that it is authentic and that it returns the idea object
end
