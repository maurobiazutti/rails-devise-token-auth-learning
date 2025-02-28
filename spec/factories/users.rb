FactoryBot.define do
  factory :user do
    email { Faker:: Internet.email }
    name { Faker:: Name.name }
    uid { email }
    password { '1234567' }
    password_confirmation { password }

    factory :confirmed_user do
      confirmed_at { Time.now }
    end

    factory :user_without_uid do
      uid { '' }
    end
  end
end