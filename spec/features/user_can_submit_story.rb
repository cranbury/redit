require 'spec_helper'

describe 'user can submit story' do
  
  let(:user) { FactoryGirl.create(:user)}

  it "should make a story" do

    visit root_path
    
    click_button "Go to Login"

    fill_in "username", with: user.username
    fill_in "password", with: "password"

    click_button "Login" 
    visit new_story_path

    fill_in "story_url", with: "www.google.com"

    click_button "Add Story"

    expect(page).to have_content "www.google.com"
  end

end