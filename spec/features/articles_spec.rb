require 'rails_helper'

RSpec.feature "Make Post with validation", type: :feature do


  scenario "Can submit posts" do
    visit "articles/new"
    fill_in "article_title", with: "My new post"
    fill_in "article_text", with: "Hello here is some random text"
    click_button "Create Article"
    expect(page).to have_content("My new post")
    expect(page).to have_content("Hello here is some random text")
  end

    scenario "A user adds an article to the Articles list" do
      visit "articles/new"
      fill_in "article_title", with: "This awesome new post"
      fill_in "article_text", with: "Hello here is some random text"
      click_button "Create Article"
      visit "/articles"
      expect(page).to have_content("This awesome new post")
      expect(page).to have_content("Hello here is some random text")
    end

  scenario "User will not able to submit a post with a title less than 5 characters" do
    visit "articles/new"
    fill_in "article_title", with: "abc"
    fill_in "article_text", with: "Hello here is some random text"
    click_button "Create Article"
    expect(page).to have_content("Title is too short (minimum is 5 characters)")
    visit "/articles"
    expect(page).should have_no_content("abc") 
  end

  scenario "As a user I can create and edit an article" do
    visit "articles/new"
    fill_in "article_title", with: "This article"
    fill_in "article_text", with: "Hello here is some random text"
    click_button "Create Article"
    click_on('Back')
    expect(page).to have_content("This article")
    click_on('Edit')
    fill_in "article_title", with: "New title"
    click_button "Update Article"
    expect(page).to have_content("Title: New title") 
    click_on('Back')
    expect(page).to have_content("New title") 
  end

  scenario "As a user I can delete an article" do
    visit "articles/new"
    fill_in "article_title", with: "This article"
    fill_in "article_text", with: "Hello here is some random text"
    click_button "Create Article"
    click_on('Back')
    expect(page).to have_content("This article")
    #Currently incomplete due to issues installing capybara-webkit
  end
end


