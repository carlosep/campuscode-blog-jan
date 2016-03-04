require "rails_helper"

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_content "Listing Posts"
  end

  scenario "User sees all posts" do
    post_1 = create(:post)
    post_2 = create(:post, author: "Poster2", title: "Title for Post2",
                    body: "Body for Post2.")
    post_3 = create(:post, author: "Poster3", title: "Title for Post3",
                    body: "Body for Post3.")
    post_4 = create(:post, author: "Poster4", title: "Title for Post4",
                    body: "Body for Post4.")

    visit root_path

    expect(page).to have_content post_1.author
    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
    expect(page).to have_content post_2.author
    expect(page).to have_content post_2.title
    expect(page).to have_content post_2.body
    expect(page).to have_content post_3.author
    expect(page).to have_content post_3.title
    expect(page).to have_content post_3.body
    expect(page).to have_content post_4.author
    expect(page).to have_content post_4.title
    expect(page).to have_content post_4.body
  end
end
