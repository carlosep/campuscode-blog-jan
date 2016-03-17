require 'rails_helper'

feature 'User logs in' do
  scenario 'successfully' do
    user_sign_in
    click_on 'Sign Out'

    expect(page).to have_content 'Signed out successfully.'
  end
end
