# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"
Bid.destroy_all
Artifact.destroy_all
User.destroy_all


        user = User.create!(
        email: 'alon@art-house.com',
        password: "123456"
    )
       user = User.create!(
        email: 'petronela@art-house.com',
        password: "123456"
    )
       user = User.create!(
        email: 'carina@art-house.com',
        password: "123456"
    )
       user = User.create!(
        email: 'cornelia@art-house.com',
        password: "123456"
    )
        file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
       
        artifact = Artifact.create!(
            name: Faker::Lorem.unique.word.capitalize(),
            artist: Faker::Artist.name,
            year: rand(1790..2020),
            description: Faker::Lorem.paragraphs,
            starting_value: rand(300..21500),
            user_id: User.first.id
        )
         artifact.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

        file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
       
        artifact = Artifact.create!(
            name: Faker::Lorem.unique.word.capitalize(),
            artist: Faker::Artist.name,
            year: rand(1790..2020),
            description: Faker::Lorem.paragraphs,
            starting_value: rand(300..21500),
            user_id: User.first.id
        )
         artifact.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

        file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
       
        artifact = Artifact.create!(
            name: Faker::Lorem.unique.word.capitalize(),
            artist: Faker::Artist.name,
            year: rand(1790..2020),
            description: Faker::Lorem.paragraphs,
            starting_value: rand(300..21500),
            user_id: User.first.id
        )
         artifact.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

        file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
       
        artifact = Artifact.create!(
            name: Faker::Lorem.unique.word.capitalize(),
            artist: Faker::Artist.name,
            year: rand(1790..2020),
            description: Faker::Lorem.paragraphs,
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  
         file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
       
        artifact = Artifact.create!(
            name: Faker::Lorem.unique.word.capitalize(),
            artist: Faker::Artist.name,
            year: rand(1790..2020),
            description: Faker::Lorem.paragraphs,
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
        
User.all.each do |user|
    2.times do
        bid = Bid.new(
            artifact: Artifact.where.not(user_id: user.id).sample,
            user: user,
            status: "pending",
            value: rand(1..10000000)
        )
        bid.save!   
     
    end

end