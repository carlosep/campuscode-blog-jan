require 'rails_helper'

feature 'Visitor visits post' do
  scenario "successfully" do
    post_1 = create(:post)

    visit post_path(post_1)

    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
  end

  scenario 'through homepage' do
    post_1 = create(:post)

    visit root_path
    click_on post_1.title

    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
  end

  scenario "and sees comments, but can't comment" do
    post_1 = create(:post)

    visit post_path(post_1)

    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
    post_1.comments.each do |comment|
      #expect(page).to have_content comment.author
      expect(page).to have_content comment.text
    end
    expect(page).to have_content 'Log in to leave a comment.'
  end
  scenario 'and wants to comment, so it is redirected' do
    post_1 = create(:post)

    visit post_path(post_1)

    click_on 'Log in'

    expect(page).to have_current_path(user_session_path)
  end

end
