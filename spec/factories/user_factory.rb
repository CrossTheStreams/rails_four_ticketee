FactoryGirl.define do
  sequence(:email) do |n|
    "user#{n}@example.com"
  end
  factory :user do
    pw = SecureRandom.hex
    email { generate(:email)}
    name "Steve"
    password pw
    password_confirmation pw

    factory :admin_user do
      admin true
    end

  end
end
