require 'rails_helper'

feature 'Visitor visits homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content 'Welcome to Blog-Jan take a seat.'
  end

  scenario 'and sees last ten posts' do
    post_1  = create(:post)
    post_2  = create(:post)
    post_3  = create(:post)
    post_4  = create(:post)
    post_5  = create(:post)
    post_6  = create(:post)
    post_7  = create(:post)
    post_8  = create(:post)
    post_9  = create(:post)
    post_10 = create(:post)
    post_11 = create(:post)
    post_12 = create(:post)

    visit root_path

    expect(page).not_to have_content post_1.title
    expect(page).not_to have_content post_2.body
    expect(page).not_to have_content post_2.title
    expect(page).not_to have_content post_2.body
    expect(page).to have_content post_3.title
    expect(page).to have_content post_3.body
    expect(page).to have_content post_4.title
    expect(page).to have_content post_4.body
    expect(page).to have_content post_5.title
    expect(page).to have_content post_5.body
    expect(page).to have_content post_6.title
    expect(page).to have_content post_6.body
    expect(page).to have_content post_7.title
    expect(page).to have_content post_7.body
    expect(page).to have_content post_8.title
    expect(page).to have_content post_8.body
    expect(page).to have_content post_9.title
    expect(page).to have_content post_9.body
    expect(page).to have_content post_10.title
    expect(page).to have_content post_10.body
    expect(page).to have_content post_11.title
    expect(page).to have_content post_11.body
    expect(page).to have_content post_12.title
    expect(page).to have_content post_12.body
  end
end
