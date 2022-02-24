FactoryBot.define do
  factory :user do
    trait :a do
      id { 1 }
      name { "factory_user_aaa" }
      email { "test@user.com" }
      phone_number { "09011112222" }
      nickname { "ニックネームaaa" }
      password { "aaaaaa" }
      admin { false }
    end

    trait :b do
      id { 2 }
      name { "factory_user_bbb" }
      email { "test@user2.com" }
      phone_number { "09033334444" }
      nickname { "ニックネーム_bbb" }
      password { "bbbbbb" }
      admin { false }
    end
  end
end