require 'spec_helper'

def create_and_sign_in
  @user = FactoryGirl.create(:user)
  visit login_path
  fill_in 'Username', :with => @user.username
  fill_in "Password", :with => @user.password
  click_on "Log In"
end
