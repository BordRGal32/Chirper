require 'spec_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }

  it 'should have a unique name' do
    FactoryGirl.create(:user)
    should validate_uniqueness_of :username


  end
end
