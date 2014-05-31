FactoryGirl.define do
  factory :user do
    pw = SecureRandom.hex
    email "sample@example.com"
    name "Steve"
    password pw
    password_confirmation pw

    factory :admin_user do
      admin true
    end

  end
end
