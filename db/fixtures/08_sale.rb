3.times do |n|
  Sale.create!(
           user_id:     User.first.id,
           team_id:     Team.first.id,
           client_id: Client.first.id,
           date_at:     "2022.02.0#{n+2}",
           inputter:    User.first.id
           )
end
3.times do |n|
  Sale.create!(
           user_id:     (User.first.id)+1,
           team_id:     Team.first.id+1,
           client_id: Client.first.id,
           date_at:     "2022.02.0#{n+7}",
           inputter:    (User.first.id)+1
           )
end
3.times do |n|
  Sale.create!(
           user_id:     (User.first.id)+2,
           team_id:     Team.first.id+2,
           client_id: (Client.first.id)+1,
           date_at:     "2022.02.1#{n+3}",
           inputter:    (User.first.id)+2
           )
end
3.times do |n|
  Sale.create!(
           user_id:     (User.first.id)+3,
           team_id:     Team.first.id+3,
           client_id: (Client.first.id)+1,
           date_at:     "2022.02.1#{n+6}",
           inputter:    (User.first.id)+3
           )
end
3.times do |n|
  Sale.create!(
           user_id:     (User.first.id)+4,
           team_id:     Team.first.id+4,
           client_id: (Client.first.id)+2,
           date_at:     "2022.02.2#{n+4}",
           inputter:    (User.first.id)+4
           )
end