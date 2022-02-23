# User.seed do |s|
#   s.id = 1
#   s.name = "aaa@aaa.com"
#   s.email = "aaa@aaa.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "aaa@aaa.com"
#   s.nickname = "aaa@aaa.com"
#   s.admin = true
# end
# User.seed do |s|
#   s.id = 2
#   s.name = "bbb@bbb.com"
#   s.email = "bbb@bbb.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "bbb@bbb.com"
#   s.nickname = "bbb@bbb.com"
#   s.admin = true
# end
# User.seed do |s|
#   s.id = 3
#   s.name = "ccc@ccc.com"
#   s.email = "ccc@ccc.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "ccc@ccc.com"
#   s.nickname = "ccc@ccc.com"
#   s.admin = false
# end
# User.seed do |s|
#   s.id = 4
#   s.name = "ddd@ddd.com"
#   s.email = "ddd@ddd.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "ddd@ddd.com"
#   s.nickname = "ddd@ddd.com"
#   s.admin = false
# end
# User.seed do |s|
#   s.id = 5
#   s.name = "eee@eee.com"
#   s.email = "eee@eee.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "eee@eee.com"
#   s.nickname = "eee@eee.com"
#   s.admin = false
# end
# User.seed do |s|
#   s.id = 6
#   s.name = "fff@fff.com"
#   s.email = "fff@fff.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "fff@fff.com"
#   s.nickname = "fff@fff.com"
#   s.admin = false
# end
# User.seed do |s|
#   s.id = 7
#   s.name = "ggg@ggg.com"
#   s.email = "ggg@ggg.com"
#   s.password = "aaaaaa"
#   s.password_confirmation = "aaaaaa"
#   s.phone_number = "ggg@ggg.com"
#   s.nickname = "ggg@ggg.com"
#   s.admin = false
# end

# 5.times do |n|
#     Team.create!(name: "team#{n+1}",
#                 user_id: (User.first.id)+n,
#                 chief: n+1
#                 )
# end

# 5.times do |n|
#       Grouping.create!(team_id: n+1,
#                   user_id: n+1                  
#                   )
# end

# 5.times do |n|
#   Product.create!(code: "ppp#{n+1}",
#                name: "ppp#{n+1}",
#                regular_price: "#{(n+1)*300}",
#                selling_price: "#{(n+1)*200}",
#                cost_price: "#{(n+1)*100}",
#                user_id: User.first.id,
#                team_id: Team.first.id
#                )
# end

# 5.times do |n|
#   Product.create!(code: "qqq#{n+1}",
#                name: "qqq#{n+1}",
#                regular_price: "#{(n+1)*300}",
#                selling_price: "#{(n+1)*200}",
#                cost_price: "#{(n+1)*100}",
#                user_id: (User.first.id)+1,
#                team_id: (Team.first.id)+1
#                )
# end

# 5.times do |n|
#   Product.create!(code: "rrr#{n+1}",
#                name: "rrr#{n+1}",
#                regular_price: "#{(n+1)*300}",
#                selling_price: "#{(n+1)*200}",
#                cost_price: "#{(n+1)*100}",
#                user_id: (User.first.id)+2,
#                team_id: (Team.first.id)+2
#                )
# end

# 5.times do |n|
#   Product.create!(code: "sss#{n+1}",
#                name: "sss#{n+1}",
#                regular_price: "#{(n+1)*300}",
#                selling_price: "#{(n+1)*200}",
#                cost_price: "#{(n+1)*100}",
#                user_id: (User.first.id)+3,
#                team_id: (Team.first.id)+3
#                )
# end

# 5.times do |n|
#   Product.create!(code: "ttt#{n+1}",
#                name: "ttt#{n+1}",
#                regular_price: "#{(n+1)*300}",
#                selling_price: "#{(n+1)*200}",
#                cost_price: "#{(n+1)*100}",
#                user_id: (User.first.id)+4,
#                team_id: (Team.first.id)+4
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




# 2.times do |n|
#   Purchase.create!(
#            user_id:     User.first.id,
#            supplier_id: Supplier.first.id,
#            date_at:     "2022020#{n+1}",
#            inputter:    User.first.id
#            )
# end
# 2.times do |n|
#   Purchase.create!(
#            user_id:     (User.first.id)+1,
#            supplier_id: (Supplier.first.id)+1,
#            date_at:     "2022020#{2*n+1}",
#            inputter:    (User.first.id)+1
#            )
# end
# 2.times do |n|
#   Purchase.create!(
#            user_id:     (User.first.id)+2,
#            supplier_id: (Supplier.first.id)+2,
#            date_at:     "2022020#{2*n+1}",
#            inputter:    (User.first.id)+2
#            )
# end
# 2.times do |n|
#   Sale.create!(
#            user_id:   User.first.id,
#            client_id: Client.first.id,
#            date_at:   "2022020#{n+1}",
#            inputter:  User.first.id
#            )
# end
# 2.times do |n|
#   Sale.create!(
#            user_id:   (User.first.id)+1,
#            client_id: (Client.first.id)+1,
#            date_at:   "2022020#{2*n+1}",
#            inputter:  (User.first.id)+1
#            )
# end
# 2.times do |n|
#   Sale.create!(
#             user_id:   (User.first.id)+2,
#             client_id: (Client.first.id)+2,
#             date_at:   "2022020#{2*n+1}",
#             inputter:  (User.first.id)+2
#             )
# end


# 6.times do |n|
#   PurchaseDetail.create!(
#                  purchase_id: (Purchase.last.id)-n,
#                  product_id:  (Product.last.id)-n,
#                  quantity:    (n+1)*100
#                  )
# end
# 6.times do |n|
#   SaleDetail.create!(
#   sale_id:     (Sale.last.id)-n,
#   product_id:  (Product.last.id)-n,
#   quantity:    (n+1)*100
#   )
# end



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