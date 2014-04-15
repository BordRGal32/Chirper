require 'spec_helper'

feature 'Creating a new session' do
  scenario 'lets a user sign in from any page via the navbar' do
    create_and_sign_in
    page.should have_content "Logged"
  end
end

feature 'Destroy a session once logged in' do
  scenario 'lets a user sign out' do
    create_and_sign_in
    click_on "Logout"
    page.should have_content "Logged out"
  end
end
