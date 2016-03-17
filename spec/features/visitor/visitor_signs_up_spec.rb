require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'successfully' do
    user_1 = build(:user)

    visit root_path
    click_on 'Sign Up'
    fill_in 'Name', with: user_1.name
    fill_in 'Email', with: user_1.email
    fill_in 'Password', with: user_1.password
    fill_in 'Password confirmation', with: user_1.password
    within '.actions' do
      click_on 'Sign up'
    end

    expect(page).to have_content 'Sign Out'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  scenario 'without a name and fails' do
    user_1 = build(:user)

    visit root_path
    click_on 'Sign Up'
    fill_in 'Email', with: user_1.email
    fill_in 'Password', with: user_1.password
    fill_in 'Password confirmation', with: user_1.password
    within '.actions' do
      click_on 'Sign up'
    end

    expect(page).to have_content 'Sign Up'
    expect(page).to have_content 'Sign In'
    expect(page).to have_content "Name can't be blank"
    expect(page).not_to have_content 'Welcome! You have signed up successfully.'
  end
end
