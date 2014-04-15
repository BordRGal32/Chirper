require 'spec_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should have_many :chirps }

  it 'should have a unique name' do
    FactoryGirl.create(:user)
    should validate_uniqueness_of :username
  end

  it 'sends a welcome email' do
    user = FactoryGirl.build(:user)
    expect(UserMailer).to receive(:welcome_email).with(user)
    user.save
  end
end
