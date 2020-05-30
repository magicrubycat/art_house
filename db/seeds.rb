# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"
#Bid.destroy_all
#Artifact.destroy_all
#User.destroy_all


        user = User.create!(
        email: 'jasmin@art-house.com',
        password: "test20",
        name: "Jasmin"
    )

        user = User.create!(
        email: 'alon@art-house.com',
        password: "test20",
        name: "Alon"
    )
       user = User.create!(
        email: 'petronela@art-house.com',
        password: "test20",
        name: "Petronela"
    )
       user = User.create!(
        email: 'carina@art-house.com',
        password: "test20",
        name: "Carina"
    )
       user = User.create!(
        email: 'cornelia@art-house.com',
        password: "test20",
        name: "Cornelia"
    )

        file = URI.open("https://theskateroom.com/wp-content/uploads/2018/03/TSR-AlbertOelhen-Untitled-780x600.png")

        artifact = Artifact.create!(
            name: "Untitled",
            artist: "Albert OEHLEN",
            year: 2018,
            description: "The guiding principle behind Albert Oehlen’s art is the use of artistic freedom to not be boring. It comes as no surprise then that his art has considerably changed over time, leaving no two series entirely alike. Oehlen’s “Computer Paintings” explore abstract imagery through the use of a 90’s computer. While using monochromatic tones, the artist replicates and extends the results he obtains through computer, and attempts to complete the piece by hand as though he were himself the computer. In doing so, Oehlen liberates the formal boundaries of painting and creates an erratic and charged composition.",
            starting_value: rand(300..21500),
            user_id: User.first.id
        )
        artifact.photo.attach(io: file, filename: 'artifact1.png', content_type: 'image/png')

        sleep(6)

        file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg")

        artifact = Artifact.create!(
            name: "Monalisa",
            artist: "Leonardo da Vinci",
            year: 1503,
            description: "The Mona Lisa is a half-length portrait painting by the Italian artist Leonardo da Vinci. It is considered an archetypal masterpiece of the Italian Renaissance, and has been described as - the best known, the most visited, the most written about, the most sung about, the most parodied work of art the world.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 2
        )
         artifact.photo.attach(io: file, filename: 'artifact2.png', content_type: 'image/png')

        sleep(6)

        file = URI.open('https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

        artifact = Artifact.create!(
            name: "First of Many",
            artist: "Unkown",
            year: 2005,
            description: "First of Many is part of the Canadian art which refers to the visual as well as plastic arts - such as sculpture - originating from the geographical area of contemporary Canada. Art. Canada is marked by thousands of years of habitation by First Nation.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 3
        )
         artifact.photo.attach(io: file, filename: 'artifact3.png', content_type: 'image/png')

        sleep(6)

        file = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2019/10/4d7c57b1-ea5f-48d3-8af9-fb5f94bb07ec/1200x680_r_la_naissance_de_venus_1484-1486_musee_des_offices_florence_immagina_leemage.jpg')

        artifact = Artifact.create!(
            name: "La nascita di Venere",
            artist: "Boticelli",
            year: 1485,
            description: "The Birth of Venus is a painting by the Italian artist Sandro Botticelli, probably made in the mid 1480s. It depicts the goddess Venus arriving at the shore after her birth, when she had emerged from the sea fully-grown.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 4
        )
         artifact.photo.attach(io: file, filename: 'artifact4.png', content_type: 'image/png')

        sleep(6)

        file = URI.open("https://cdnph.upi.com/sv/ph/og/i/5811505017334/2017/1/15050209312220/v1.5/UPI-Almanac-for-Sunday-Sept-10-2017.jpg")

        artifact = Artifact.create!(
            name: "Guernica",
            artist: "Pablo Picasso",
            year: 1937,
            description: "Guernica is a large 1937 oil painting on canvas by Spanish artist Pablo Picasso. One of Picasso's best known works, Guernica is regarded by many art critics as one of the most moving and powerful anti-war paintings in history. It is exhibited in the Museo Reina Sofía in Madrid",
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'artifact5.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://a.1stdibscdn.com/unknown-sculptures-large-early-20th-century-bronze-bull-sculpture-on-custom-cement-base-for-sale/a_5063/1547070896205/13089741_master_master.jpg")

         artifact = Artifact.create!(
            name: "Bronze Bull",
            artist: "Unkown",
            year: 1930,
            description: "This bronze has an beautiful patina and looks to be an important work of art. No signature found, but it is substantial and very well executed. Most likely the original concrete base that has a slant to accentuate the charging of the bull. Age appears to be early 20th century. It just has a wonderful overall appeal.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 2
        )
         artifact.photo.attach(io: file, filename: 'artifact6.png', content_type: 'image/png')

        sleep(6)

        # file = URI.open("https://www.admiddleeast.com/public/images/2019/06/24/11-most-fascinating-public-sculptures-01.jpg")

        #  artifact = Artifact.create!(
        #     name: "Travelling to work?",
        #     artist: "John Ranky",
        #     year: 2000,
        #     description: "Commissioned public artwork has been part of our culture for many millennia. Over time, as world travel has become easier and safer, commissioned civil works of art have turned into tourist attractions all their own. From the bustling streets of New York City and Chicago to quieter corners of the globe in Howick, South Africa, and Las Colinas, Texas, Architectural Digest surveys twenty-four of the world’s most fascinating public sculptures.",
        #     starting_value: rand(300..21500),
        #     user_id: User.first.id + 3
        # )
        #  artifact.photo.attach(io: file, filename: 'artifact7.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://martinrandall.ontigerbay.co.uk/content/Default/Pictures/art-in-japan-main-image-81-1.jpg")

         artifact = Artifact.create!(
            name: "Japanese Women",
            artist: "Hiroshi Shu",
            year: 1789,
            description: "Art in Japan - Art, craft, architecture & design. Many of the finest collections of Japanese art in museums and in situ in temples and shrines. World Heritage sites at Nikko, Kyoto, Nara and Horyu-ji, and the art island of Naoshima. Outstanding museum buildings by Tadao Ando, I.M. Pei and other leading architects. Other aspects of Japanese culture, past and present, including gastronomy and gardens.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 4
        )
         artifact.photo.attach(io: file, filename: 'artifact8.png', content_type: 'image/png')

        sleep(6)

        file = URI.open("https://source.unsplash.com/collection/9248817/1600x900")

         artifact = Artifact.create!(
            name: "Reflections in water",
            artist: "Jackie Smith",
            year: 2002,
            description: "Reflection is the change in direction of a wavefront at an interface between two different media so that the wavefront returns into the medium from which it originated. Common examples include the reflection of light, sound and water waves.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'artifact9.png', content_type: 'image/png')

        sleep(6)

        file = URI.open("https://source.unsplash.com/collection/273745/1600x900")

         artifact = Artifact.create!(
            name: "Reflections about art",
            artist: "Jim Smith",
            year: 2002,
            description: "Art is a diverse range of human activities in creating visual, auditory or performing artifacts (artworks), expressing the author's imaginative, conceptual ideas, or technical skill, intended to be appreciated for their beauty or emotional power.Other activities related to the production of works of art include the criticism of art, the study of the history of art, and the aesthetic dissemination of art.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 2
        )
         artifact.photo.attach(io: file, filename: 'artifact10.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://miro.medium.com/max/3840/1*nbEWiH-H0aEJj1iYTN-t1w.jpeg")

         artifact = Artifact.create!(
            name: "Disegno",
            artist: "Leonardo da Vinci",
            year: 1503,
            description: "Just as food eaten without appetite is a tedious nourishment, so does study without zeal damage the memory by not assimilating what it absorbs. Leonardo di ser Piero da Vinci, known as Leonardo da Vinci, was an Italian polymath of the Renaissance whose areas of interest included invention, drawing, painting, sculpture, architecture, science, music, mathematics, engineering, literature, anatomy, geology, astronomy, botany, paleontology, and cartography.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 3
        )
         artifact.photo.attach(io: file, filename: 'artifact11.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://ichef.bbci.co.uk/wwfeatures/live/624_351/images/live/p0/70/rw/p070rwt0.jpg")

         artifact = Artifact.create!(
            name: "Virgin of the Rocks",
            artist: "Leonardo da Vinci",
            year: 1503,
            description: "Some paintings are as mysterious as they are famous. Gazing at them is like diving into a deep dark sea. You never know what unsuspecting pearl your eyes might prise loose from their secretive lips – what key you might find that can unlock their power. Take Leonardo da Vinci’s the Virgin of the Rocks, in which the infant Jesus finds himself in a shadowy cave on Alpine playdate with a baby John the Baptist.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'artifact12.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://source.unsplash.com/collection/273747/1600x900")

         artifact = Artifact.create!(
            name: "Inside the sun",
            artist: "John Smith",
            year: 2001,
            description: "Hiding in plain sight in both paintings is a small and previously overlooked detail that, once spotted, transforms the scene into something more complex and controversial than the vision of a sacred creche, watched over tenderly by the Virgin Mary and the archangel Uriel.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 3
        )
         artifact.photo.attach(io: file, filename: 'artifact13.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://source.unsplash.com/collection/273746/1600x900")

         artifact = Artifact.create!(
            name: "Life reflections",
            artist: "John Smith",
            year: 2005,
            description: "To appreciate just how surprising and provocative this complex symbol is – an Alpine palm tree doubling as a displaced scallop shell – we must first remind ourselves of the backstory of Leonardo’s vision, which pulses with a strange subterranean poetry all its own. Though very different in temperature and tone, the two paintings share the same basic composition.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'artifact14.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://source.unsplash.com/collection/273748/1600x900")

         artifact = Artifact.create!(
            name: "On a day",
            artist: "Arula Jin",
            year: 2005,
            description: "Where, you might reasonably ask, is the pearl in the Virgin of the Rocks, if the palm tree is really a double-sign that merges into the symbolism of a pearl-bearing scallop? In fact, Leonardo has given us 20. At the precise centre of both paintings, glinting at us underappreciated for half a millennium, is a polished brooch that keeps Mary’s cloak from slipping off her shoulders. Surrounding the central stone in that clasp is a halo of 20 dazzling pearls.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'artifact15.png', content_type: 'image/png')

         sleep(6)

         file = URI.open("https://source.unsplash.com/collection/273749/1600x900")

         artifact = Artifact.create!(
            name: "This morning",
            artist: "Arula Jin",
            year: 2005,
            description: "Whether the rocky portrayal is what the Confraternity of the Immaculate Conception in Milan would have wanted when it commissioned Leonardo to create a central panel for its altarpiece in 1483, is doubtful. Rather than elevating and enthroning the mother and child among a choir of angels, as was expected, Leonardo fossicks from the depths of his imagination a grotty and comfortless grotto.",
            starting_value: rand(300..21500),
            user_id: User.first.id + 1
        )
         artifact.photo.attach(io: file, filename: 'artifact16.png', content_type: 'image/png')

User.all.each do |user|
    2.times do
        bid = Bid.new(
            artifact: Artifact.where.not(user_id: user.id).sample,
            user: user,
            value: rand(1..10000000)
        )
        bid.save!

    end

end
