# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Example User",
             username: "example",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             country: "Ireland",
             dob:'01/01/1990')

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  username=name.delete(' ')
  dob = '05/02/1991'
    
  User.create!(name:  name,
               username: username,
               email: email,
               password:              password,
               password_confirmation: password,
               country: "England",
               dob:dob)
end
