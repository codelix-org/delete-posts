require 'rails_helper'

describe "setting the home page", type: :feature do
  it "has the posts page as the home page" do
    visit root_path
    expect(page).to have_content 'All the posts'
  end
end
