# 10.times do |n|
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

# 5.times do |n|
#   Product.create!(code: "product#{n+1}",
#                name: "ppp-#{n+1}",
#                regular_price: "#{n+300}",
#                selling_price: "#{n+200}",
#                cost_price: "#{n+100}",
#                user_id: User.first.id
#                )
# end

# 5.times do |n|
#   name = Faker::Company.name
#   Client.create!(name: name)
# end

5.times do |n|
  name = Faker::Company.name
  Supplier.create!(name: name)
end



# 1.times do |n|
#   @user = User.create!(name: "seed_test",
#                email: "email@email.com",
#                password: "aaaaaa",
#                password_confirmation: "aaaaaa",
#                phone_number: "09011112222",
#                nickname: "test",               
#                admin: false
#                )
# end