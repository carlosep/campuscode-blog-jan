require "rails_helper"

feature "User visits post" do
  scenario "successfully" do
    post_1 = create(:post)

    visit post_path(post_1)

    expect(page).to have_content post_1.author
    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
  end

  scenario "through homepage" do
    post_1 = create(:post)

    visit root_path
    click_on post_1.title

    expect(page).to have_content post_1.author
    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
  end

  scenario "and sees comments" do
    post_1 = create(:post)

    visit post_path(post_1)

    expect(page).to have_content post_1.author
    expect(page).to have_content post_1.title
    expect(page).to have_content post_1.body
    post_1.comments.each do |comment|
      expect(page).to have_content comment.author
      expect(page).to have_content comment.email
      expect(page).to have_content comment.text
    end
  end

end
