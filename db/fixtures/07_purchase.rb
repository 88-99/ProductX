3.times do |n|
  Purchase.create!(
           user_id:     User.first.id,
           team_id:     Team.first.id,
           supplier_id: Supplier.first.id,
           date_at:     "2022.02.0#{n+1}",
           inputter:    User.first.id
           )
end
3.times do |n|
  Purchase.create!(
           user_id:     (User.first.id)+1,
           team_id:     Team.first.id+1,
           supplier_id: Supplier.first.id,
           date_at:     "2022.02.0#{n+5}",
           inputter:    (User.first.id)+1
           )
end
3.times do |n|
  Purchase.create!(
           user_id:     (User.first.id)+2,
           team_id:     Team.first.id+2,
           supplier_id: (Supplier.first.id)+1,
           date_at:     "2022.02.1#{n+1}",
           inputter:    (User.first.id)+2
           )
end
3.times do |n|
  Purchase.create!(
           user_id:     (User.first.id)+3,
           team_id:     Team.first.id+3,
           supplier_id: (Supplier.first.id)+1,
           date_at:     "2022.02.1#{n+5}",
           inputter:    (User.first.id)+3
           )
end
3.times do |n|
  Purchase.create!(
           user_id:     (User.first.id)+4,
           team_id:     Team.first.id+4,
           supplier_id: (Supplier.first.id)+2,
           date_at:     "2022.02.2#{n+1}",
           inputter:    (User.first.id)+4
           )
end