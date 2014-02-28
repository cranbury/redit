require 'spec_helper'

describe "a user can login and logout" do
  let(:user) { FactoryGirl.create(:user)}

  it "creates a user" do
    visit root_path
    click_link "New User Sign Up"



    fill_in "user_email", with: "email@email.com"
    fill_in "user_username", with: "user1"
    fill_in "user_password", with: "password"
    fill_in "user_password_confirmation", with: "password"

    click_button "Create User"

    save_and_open_page

    expect(page).to have_content("user1")


  end


end

