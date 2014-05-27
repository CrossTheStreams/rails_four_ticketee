FactoryGirl.define do
  factory :user do
    pw = SecureRandom.hex
    email "sample@example.com"
    name "Steve"
    password pw
    password_confirmation pw
  end
end
