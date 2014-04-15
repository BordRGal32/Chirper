FactoryGirl.define do
  factory :user, :class => User do
    username { Faker::Internet.user_name }
    email "test@test.com"
    password "123"
    password_confirmation { |u| u.password }
  end
end
