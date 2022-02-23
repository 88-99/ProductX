5.times do |n|
  Product.create!(code: "ppp#{n+1}",
               name: "ppp#{n+1}",
               regular_price: "#{(n+1)*300}",
               selling_price: "#{(n+1)*200}",
               cost_price: "#{(n+1)*100}",
               user_id: User.first.id,
               team_id: Team.first.id
               )
end

5.times do |n|
  Product.create!(code: "qqq#{n+1}",
               name: "qqq#{n+1}",
               regular_price: "#{(n+1)*300}",
               selling_price: "#{(n+1)*200}",
               cost_price: "#{(n+1)*100}",
               user_id: (User.first.id)+1,
               team_id: (Team.first.id)+1
               )
end

5.times do |n|
  Product.create!(code: "rrr#{n+1}",
               name: "rrr#{n+1}",
               regular_price: "#{(n+1)*300}",
               selling_price: "#{(n+1)*200}",
               cost_price: "#{(n+1)*100}",
               user_id: (User.first.id)+2,
               team_id: (Team.first.id)+2
               )
end

5.times do |n|
  Product.create!(code: "sss#{n+1}",
               name: "sss#{n+1}",
               regular_price: "#{(n+1)*300}",
               selling_price: "#{(n+1)*200}",
               cost_price: "#{(n+1)*100}",
               user_id: (User.first.id)+3,
               team_id: (Team.first.id)+3
               )
end

5.times do |n|
  Product.create!(code: "ttt#{n+1}",
               name: "ttt#{n+1}",
               regular_price: "#{(n+1)*300}",
               selling_price: "#{(n+1)*200}",
               cost_price: "#{(n+1)*100}",
               user_id: (User.first.id)+4,
               team_id: (Team.first.id)+4
               )
end