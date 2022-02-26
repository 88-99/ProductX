FactoryBot.define do
  factory :user do
    trait :a do
      name { "factory_user_aaa" }
      email { Faker::Internet.free_email }
      # sequence(:email) { |n| "tama#{n}@cat.com" }
      phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
      nickname { Faker::Name.name }
      password { "aaaaaa" }
      admin { false }
    end

    trait :b do
      name { "factory_user_bbb" }
      email { Faker::Internet.free_email }
      # sequence(:email) { |n| "tama#{n}@cat.com" }
      phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
      nickname { Faker::Name.name }
      password { "bbbbbb" }
      admin { false }
    end
  end
end