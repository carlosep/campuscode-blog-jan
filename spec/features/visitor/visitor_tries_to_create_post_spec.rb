require "rails_helper"

feature "Visitor tries to create post" do
  scenario "unsuccessfully" do
    visit root_path
    expect(page).not_to have_content "New Post"
  end

  scenario "and insists" do
    visit new_post_path
    expect(page).to have_content "Access Denied"
  end
end
