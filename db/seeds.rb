# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password,
    name: Faker::Name.name,
    confirmed_at: Time.now
  )
end

users = User.all

40.times do
  Item.create!(
    user: users.sample,
    body: Faker::Lorem.sentence
  )
end



puts "#{User.count} users created"
puts "#{Item.count} items created"