FactoryBot.define do
  factory :user do
    trait :a do
      id { 1 }
      name { "factory_user_aaa" }
      email { "test@user.com" }
      phone_number { "09011112222" }
      nickname { "factory_user_aaa" }
      password { "aaaaaa" }
      admin { false }
    end

    trait :b do
      id { 2 }
      name { "factory_user_bbb" }
      email { "test@user2.com" }
      phone_number { "09033334444" }
      nickname { "factory_user_bbb" }
      password { "bbbbbb" }
      admin { false }
    end

    trait :admin do
      id { 3 }
      name { "factory_user_admin" }
      email { "test@user3.com" }
      phone_number { "09055556666" }
      nickname { "factory_user_bbb" }
      password { "adminn" }
      admin { true }
    end
  end
end