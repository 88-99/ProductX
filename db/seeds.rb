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

# 5.times do |n|
#   Product.create!(code: "ppp#{n+1}",
#                name: "ppp#{n+1}",
#                regular_price: "#{(n+1)*300}",
#                selling_price: "#{(n+1)*200}",
#                cost_price: "#{(n+1)*100}",
#                user_id: User.first.id
#                )
# end

# 5.times do |n|
#   name = Faker::Company.name
#   Client.create!(name: name)
# end

# 5.times do |n|
#   name = Faker::Company.name
#   Supplier.create!(name: name)
# end


# 5.times do |n|
#   Purchase.create!(
#            user_id:     User.first.id,
#            supplier_id: Supplier.first.id,
#            date_at:     "2022020#{n+1}",
#            inputter:    User.first.id
#            )
# end

# 5.times do |n|
#   Purchase.create!(
#            user_id:     (User.first.id)+1,
#            supplier_id: (Supplier.first.id)+1,
#            date_at:     "2022020#{2*n+1}",
#            inputter:    (User.first.id)+1
#            )
# end

# 5.times do |n|
#   Sale.create!(
#            user_id:   User.first.id,
#            client_id: Client.first.id,
#            date_at:   "2022020#{n+1}",
#            inputter:  User.first.id
#            )
# end

# 5.times do |n|
#   Sale.create!(
#            user_id:   (User.first.id)+1,
#            client_id: (Client.first.id)+1,
#            date_at:   "2022020#{2*n+1}",
#            inputter:  (User.first.id)+1
#            )
# end


5.times do |n|
  PurchaseDetail.create!(
                 purchase_id: (Purchase.last.id)-n,
                 product_id:  (Product.last.id)-n,
                 quantity:    (n+1)*100
                 )
end

5.times do |n|
  SaleDetail.create!(
  sale_id:     (Sale.last.id)-n,
  product_id:  (Product.last.id)-n,
  quantity:    (n+1)*100
  )
end