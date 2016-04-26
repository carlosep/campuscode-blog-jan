require 'rails_helper'

feature 'Admin creates post' do
  scenario 'successfully' do
    post = build(:post)
    admin_sign_in
    visit new_post_path
    fill_in 'Title', with: post.title
    fill_in 'Subtitle', with: post.subtitle
    fill_in 'Body', with: post.body
    click_on 'Create Post'

    expect(page).to have_content 'Post was successfully created.'
    expect(page).to have_content post.title
    expect(page).to have_content post.subtitle
    expect(page).to have_content post.body
  end

  scenario 'through homepage' do
    admin_sign_in
    visit root_path
    expect(page).to have_content 'New Post'
  end
end
