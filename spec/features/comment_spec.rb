require 'rails_helper'

RSpec.feature "A user can comment on a post", type: :feature do
    scenario "Can submit posts" do
        visit "articles/new"
        fill_in "article_title", with: "My new post"
        fill_in "article_text", with: "Hello here is some random text"
        click_button "Create Article"
        fill_in "Commenter", with: "Jack"
        fill_in "Body", with: "Here is an awesome comment"
        click_button "Create Comment"
        expect(page).to have_content("Commenter: Jack")
        expect(page).to have_content("Comment: Here is an awesome comment")
      end

      scenario "User can make comments and delete them" do
        visit "articles/new"
        fill_in "article_title", with: "My new post"
        fill_in "article_text", with: "Hello here is some random text"
        click_button "Create Article"
        fill_in "Commenter", with: "Jack"
        fill_in "Body", with: "Here is an awesome comment"
        click_button "Create Comment"
        expect(page).to have_content("Commenter: Jack")
        expect(page).to have_content("Comment: Here is an awesome comment")
        click_on('Delete')
      end

end