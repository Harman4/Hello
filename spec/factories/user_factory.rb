FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email "foob@example.com"
    password "1234567890"
    first_name "foo"
    last_name "bar"
    admin false
  end
end
