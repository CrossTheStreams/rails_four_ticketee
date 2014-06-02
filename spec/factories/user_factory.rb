FactoryGirl.define do
  sequence(:email) do |n|
    "user#{n}@example.com"
  end
  sequence(:name) do |n|
    "username#{n}" 
  end
  factory :user do
    pw = SecureRandom.hex
    name { generate(:name)}
    email { generate(:email)}
    password pw
    password_confirmation pw

    factory :admin_user do
      admin true
    end

  end
end
