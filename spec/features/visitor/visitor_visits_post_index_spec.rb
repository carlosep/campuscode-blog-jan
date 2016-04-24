require 'rails_helper'

feature 'Visitor visits post index' do
  scenario 'successfully' do
    20.times do
      create(:post)
    end

    visit posts_path
    expect(page).to have_selector('div.post', count: 20)
  end

  scenario 'through homepage' do
    20.times do
      create(:post)
    end

    visit root_path
    click_on 'All Posts'

    expect(page).to have_selector('div.post', count: 20)
  end
end
