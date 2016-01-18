require "rails_helper"

feature "User visits homepage" do
  scenario "Successfully" do
    visit root_path
    expect(page).to have_content "Listing Posts"
  end

  scenario "User sees all posts" do
    Post.create!(author: "John Doe", title: "John Doe goes to mars", body: "Mars is a wonderful place for vacation.")
    Post.create!(author: "Mary Poppins", title: "Mary poppins sings death metal", body: "What the hell is that?")
    Post.create!(author: "Richter Belmont", title: "Die, Monster!", body: "You don't belong in this world.")
    Post.create!(author: "Dracula", title: "It was not by my hands...", body: "That i was once again given flesh.")

    visit root_path
    expect(page).to have_content "John Doe goes to mars"
    expect(page).to have_content "Mary poppins sings death metal"
    expect(page).to have_content "Die, Monster!"
    expect(page).to have_content "It was not by my hands..."
  end
end
