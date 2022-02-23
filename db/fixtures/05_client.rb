5.times do |n|
  name = Faker::Company.name
  Client.create!(name: name)
end