require 'rails_helper'

feature 'Admin edits post' do
  scenario 'successfully' do
    post = create(:post)
    admin_sign_in
    visit root_path
    click_on 'Destroy'

    expect(page).to have_content 'Post was successfully destroyed.'
    expect(page).not_to have_content post.title
    expect(page).not_to have_content post.subtitle
    expect(page).not_to have_content post.body
  end
end
