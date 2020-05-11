require 'rails_helper'

RSpec.feature "Make Post", type: :feature do
  scenario "Can submit posts" do
    visit "articles/new"
    fill_in "article_title", with: "My new post"
    fill_in "article_text", with: "Hello here are is some random text"
    click_button "Save Article"
    expect(page).to have_content("My new post")
    expect(page).to have_content("Hello here are is some random text")
  end
end