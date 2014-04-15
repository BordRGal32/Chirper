require 'spec_helper'

feature 'Creating a new user' do
  scenario 'it allows an individual to create a new user account from any page via the nav-bar' do
    visit root_path
    click_on "Sign Up"
    page.should have_content "We are Excited"
  end

  scenario 'from the user/new page it allows you to create a new user' do
    visit signup_path
    user = FactoryGirl.create(:user)
    fill_in 'username', :with => user.username
    fill_in 'email', :with => user.email
    fill_in 'password', :with => user.password
    fill_in 'Do it again. Dance monkey, dance.', :with => user.password_confirmation
  end
end

feature 'Editing a user' do
  scenario 'from the users profile page they can edit their profile' do
    create_and_sign_in
    visit edit_user_path(@user)
    click_on "Update User"
    page.should have_content "Updated"
  end
end

feature 'Deleting a user' do
  scenario 'from the users profile page they can delte their profile' do
    create_and_sign_in
    visit user_path(@user)
    click_on "Delete User"
    page.should have_content "Home"
  end
end
