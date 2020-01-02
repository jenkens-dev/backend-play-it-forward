# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

org1 = Organization.create(username: 'Demolab', display_name: 'Democracy Lab', address: '', logo: 'https://d1agxr2dqkgkuy.cloudfront.net/img/dl_logo.png', description: 'DemocracyLab helps tech for good projects launch by connecting skilled volunteers to projects that need them. We are open to projects from individuals, community organizations, non-profits, social purpose companies and government agencies. Our platform helps volunteers give back and develop new skills, while accelerating the evolution of new technologies that empower citizens and help institutions become more accessible, accountable, and efficient.', mission: 'Empower people who use technology to advance the public good.', contact: 'https://www.democracylab.org/index/?section=ContactUs')
event1 = Event.create(title: "Hacky New Year", location:'Microsoft Reactor (Building 20), 3709 Microsoft Way Redmond, WA 98052', description: 'Join us on January 11th for a convening of the local tech-for-good community.', organization_id: org1.id)

org2 = Organization.create(username: "SeattleHumane", display_name: 'Seattle Humane', address: "13212 SE Eastgate Way, Bellevue, WA 98005", logo: "https://www.seattlehumane.org/wp-content/uploads/2018/08/SHS-Logo-NoTag.svg", description: 'Seattle Humane is the Puget Sound’s leader in animal adoption, education and welfare. Our top priority is to connect animals in need of rescue with the people who will love them.  Through our outreach, advocacy, and services we strive to ensure that animal companionship is accessible to all', mission: 'Seattle Humane promotes the human-animal bond by saving and serving pets in need, regardless of age, ability, circumstance or geography.', contact: 'https://www.seattlehumane.org/get-involved/')

event2 = Event.create(title: 'Tuxes & Tails', location: 'Meydenbauer Center in Bellevue', description: 'Our 30th annual fundraising gala was held May 11, 2019 at the Meydenbauer Center in Bellevue. More than $1.5 million was raised and 44 pets went home with their new families.', organization_id: org2.id)

vol1 = Volunteer.create(username: 'jw', display_name: 'Jen Williams', image: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fvignette.wikia.nocookie.net%2Fhaikyuu%2Fimages%2F1%2F1d%2FKenmaKozume.png%2Frevision%2Flatest%3Fcb%3D20140616134004&imgrefurl=https%3A%2F%2Fhaikyuu.fandom.com%2Fwiki%2FKenma_Kozume&tbnid=q70_roiKAoYfHM&vet=12ahUKEwi9i-zcm-TmAhUWiJ4KHe4QATsQMygAegUIARCNAg..i&docid=P1-Q4sMIM65eGM&w=853&h=480&q=kenma%20kozume&ved=2ahUKEwi9i-zcm-TmAhUWiJ4KHe4QATsQMygAegUIARCNAg', bio: 'I love tech for good projects', points: 0, title: '')

eventVol = EventVolunteer.create(event_id: event1.id, volunteer_id: vol1.id)