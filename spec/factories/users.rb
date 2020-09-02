FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "sample#{n + 1}@user.com" }
    password { 'password' }
    password_confirmation { 'password' }
    confirmed_at { Time.current }
  end
end
