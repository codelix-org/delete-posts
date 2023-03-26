require 'rails_helper'

describe "deleting a post", type: :feature do
  it "removes the post from the home page" do
    visit root_path
    click_on "New Post"
    fill_in 'Title', with: 'An example title'
    fill_in 'Content', with: 'Example content'
    click_on "Create Post"

    expect(page).to have_content 'All the posts'
    expect(page).to have_content("An example title")
    expect(page).to have_content("Example content")

    click_on "Delete"
    expect(page).to have_content 'All the posts'
    expect(page).not_to have_content("An example title")
    expect(page).not_to have_content("Example content")
  end
end
