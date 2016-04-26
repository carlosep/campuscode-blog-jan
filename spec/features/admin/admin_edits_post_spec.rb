require 'rails_helper'

feature 'Admin edits post' do
  scenario 'successfully' do
    post = create(:post)
    new_post = build(:post)
    admin_sign_in
    visit edit_post_path(post)

    fill_in 'Title', with: new_post.title
    fill_in 'Subtitle', with: new_post.subtitle
    fill_in 'Body', with: new_post.body

    click_on 'Update Post'

    expect(page).to have_content 'Post was successfully updated.'
    expect(page).to have_content new_post.title
    expect(page).to have_content new_post.subtitle
    expect(page).to have_content new_post.body
  end

  scenario 'through homepage' do
    post = create(:post)
    admin_sign_in
    visit root_path
    click_on 'Edit'
    expect(page).to have_content 'Edit Post'
  end
end
