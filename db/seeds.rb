# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

emails = ["alon@art-house.com", "petronela@art-house.com", "carina@art-house.com", "cornelia@art-house.com", "jasmin@art-house.com"]
emails.each do |email|
   user = User.new(
     email: email,
     password: "123456")
   user.save!
   5.times do
   artifact = Artifact.new(
     name: Faker::Lorem.unique.word.capitalize(),
     artist: Faker::Artist.name,
     year: rand(1790..2020),
     description: Faker::Lorem.paragraphs,
     starting_value: rand(300..21500),
     user: user
  )
  artifact.save!
 end
end