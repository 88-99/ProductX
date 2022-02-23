User.seed do |s|
  s.id = 1
  s.name = "aaa@aaa.com"
  s.email = "aaa@aaa.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "aaa@aaa.com"
  s.nickname = "aaa@aaa.com"
  s.admin = true
end
User.seed do |s|
  s.id = 2
  s.name = "bbb@bbb.com"
  s.email = "bbb@bbb.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "bbb@bbb.com"
  s.nickname = "bbb@bbb.com"
  s.admin = true
end
User.seed do |s|
  s.id = 3
  s.name = "ccc@ccc.com"
  s.email = "ccc@ccc.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "ccc@ccc.com"
  s.nickname = "ccc@ccc.com"
  s.admin = false
end
User.seed do |s|
  s.id = 4
  s.name = "ddd@ddd.com"
  s.email = "ddd@ddd.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "ddd@ddd.com"
  s.nickname = "ddd@ddd.com"
  s.admin = false
end
User.seed do |s|
  s.id = 5
  s.name = "eee@eee.com"
  s.email = "eee@eee.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "eee@eee.com"
  s.nickname = "eee@eee.com"
  s.admin = false
end
User.seed do |s|
  s.id = 6
  s.name = "fff@fff.com"
  s.email = "fff@fff.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "fff@fff.com"
  s.nickname = "fff@fff.com"
  s.admin = false
end
User.seed do |s|
  s.id = 7
  s.name = "ggg@ggg.com"
  s.email = "ggg@ggg.com"
  s.password = "aaaaaa"
  s.password_confirmation = "aaaaaa"
  s.phone_number = "ggg@ggg.com"
  s.nickname = "ggg@ggg.com"
  s.admin = false
end


# 5 .times do |n|
#   name = Faker::FunnyName.name
#   email = Faker::Internet.email
#   phone_number = Faker::PhoneNumber.phone_number
#   nickname = Faker::Games::Pokemon.name
#   @user = User.create!(name: name,
#                email: email,
#                password: "aaaaaa",
#                password_confirmation: "aaaaaa",
#                phone_number: phone_number,
#                nickname: nickname,               
#                admin: false
#                )
# end