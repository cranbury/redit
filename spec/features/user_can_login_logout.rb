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

    expect(page).to have_content("user1")

    # expect(page).to have_content("logout")


  end

  it "lets the user sign in" do
    visit root_path
    
    click_button "Go to Login"

    fill_in "username", with: user.username
    fill_in "password", with: "password"

    click_button "Login" 
        # save_and_open_page
    expect(page).to have_content("You are logged in")
  end

  it "lets the user log out" do 
    visit root_path
    
    click_button "Go to Login"

    fill_in "username", with: user.username
    fill_in "password", with: "password"

    click_button "Login" 
        
    # expect(page).to have_content("You are logged in")

    click_button "Logout"
    save_and_open_page
    expect(page).to have_content("You are logged out")

  end
    

end

