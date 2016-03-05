require "rails_helper"

feature "User tries to create post" do
  scenario "unsuccessfully" do
    user_sign_in
    visit root_path
    expect(page).not_to have_content "New Post"
  end

  scenario "and insists" do
    user_sign_in
    visit new_post_path
    expect(page).to have_content "Access Denied"
  end
end
