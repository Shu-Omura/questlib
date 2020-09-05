FactoryBot.define do
  factory :user do
    name { 'Test User' }
    sequence(:email) { |n| "sample#{n + 1}@user.com" }
    password { 'password' }
    password_confirmation { 'password' }
    confirmed_at { Time.current }
    teams { [create(:team)] }
  end
end
