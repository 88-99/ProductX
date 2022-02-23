5.times do |n|
  name = Faker::Company.name
  Supplier.create!(name: name)
end