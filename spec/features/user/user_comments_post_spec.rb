require 'rails_helper'

feature 'User comments post' do
  scenario "successfully" do
    post = create(:post)
    user = create(:user)
    user_sign_in(user: user)
    click_on post.title

    fill_in 'Text', with: 'Very good.'

    click_on 'Create Comment'

    expect(page).to have_content user.name
    expect(page).to have_content 'Very good.'
  end
end
