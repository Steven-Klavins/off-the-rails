require 'rails_helper'

RSpec.feature "Make Post", type: :feature do
  scenario "User will not able to submit a post with a title less than 5 characters" do
    visit "articles/new"
    fill_in "article_title", with: "abc"
    fill_in "article_text", with: "Hello here is some random text"
    click_button "Save Article"
    expect(page).to have_content("Title is too short (minimum is 5 characters)")
    visit "/articles"
    expect(page).should have_no_content("abc") 
  end

  scenario "User will a user can edit an article" do
    visit "articles/new"
    fill_in "article_title", with: "This article"
    fill_in "article_text", with: "Hello here is some random text"
    click_button "Save Article"
    click_on('Back')
    expect(page).to have_content("This article")
    click_on('Edit')
    fill_in "article_title", with: "New title"
    click_button "Update Article"
    expect(page).to have_content("Title: New title") 
    click_on('Back')
    expect(page).to have_content("New title") 
  end
end