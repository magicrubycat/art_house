# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::Artist.name      #=> "Christophe Bartell"

Faker::Internet.email #=> "kirsten.greenholt@corkeryfisher.info"
Artists = Faker::Artist.name 


 50.times do
  artifacts = Artifact.new(
    name: Faker::Lorem.word,
    artist: Faker::Artist.name,
    year: Faker::Date.backward,
    description: Faker::Lorem.word,
    starting_value:Faker::Number.number
    sold: Faker::Boolean.boolean
    puts "https://picsum.photos/id/237/200/300"
  )
  artifact.save!
 end