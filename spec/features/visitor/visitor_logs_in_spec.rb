require 'rails_helper'

feature 'Visitor logs in' do
  scenario "successfully" do
    user_1 = create(:user)

    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: user_1.email
    fill_in 'Password', with: user_1.password
    click_on 'Log in'

    expect(page).to have_content 'Sign Out'
    expect(page).to have_content 'Signed in successfully.'
    # expect(page).not_to have_content 'New Post'
  end
end
