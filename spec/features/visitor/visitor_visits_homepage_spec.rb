require "rails_helper"

feature "Visitor visits homepage" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_content "Welcome to Blog-Jan take a seat."
  end

  scenario "and sees all posts" do
    post_1 = create(:post)
    post_2 = create(:post, title: "Title for Post2", body: "Body for Post2.")
    post_3 = create(:post, title: "Title for Post3", body: "Body for Post3.")
    post_4 = create(:post, title: "Title for Post4", body: "Body for Post4.")

    visit root_path

    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
    expect(page).to have_content post_2.title
    expect(page).to have_content post_2.body
    expect(page).to have_content post_3.title
    expect(page).to have_content post_3.body
    expect(page).to have_content post_4.title
    expect(page).to have_content post_4.body
  end
end
