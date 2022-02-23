5.times do |n|
  Grouping.create!(team_id: n+1,
                   user_id: n+1                  
                   )
end