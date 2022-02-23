5.times do |n|
  Team.create!(name: "team#{n+1}",
              user_id: (User.first.id)+n,
              chief: n+1
              )
end