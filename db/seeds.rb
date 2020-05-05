# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all
Neighborhood.destroy_all
User.destroy_all
Business.destroy_all
UserNeighborhood.destroy_all


Neighborhood.create(name: "Logan Square")
Neighborhood.create(name: "Wicker Park")
Neighborhood.create(name: "Buck Town")
Neighborhood.create(name: "Uptown")
Neighborhood.create(name: "Roscoe Village")
Neighborhood.create(name: "Gold Coast")
Neighborhood.create(name: "Lincoln Park")
Neighborhood.create(name: "Goose Island")

Business.create(name: "The Dill Pickle - Logan Square", address: "2746 N Milwaukee Ave", neighborhood_id: Neighborhood.find_by(name: "Logan Square").id)
Business.create(name: "Fresh Market Place - Logan Square", address: "2134 N Western Ave", neighborhood_id: Neighborhood.find_by(name: "Logan Square").id)
Business.create(name: "Walgreens - Logan Square", address: "2001 N Milwaukee Ave", neighborhood_id: Neighborhood.find_by(name: "Logan Square").id)

Business.create(name: "Uptown Shop & Save", address: "4605 N Sheridan Rd.", neighborhood_id: Neighborhood.find_by(name: "Uptown").id)
Business.create(name: "Uptown Ace Hardware", address: "4654 N Broadway", neighborhood_id: Neighborhood.find_by(name: "Uptown").id)
Business.create(name: "Target", address: "4466 N Broadway.", neighborhood_id: Neighborhood.find_by(name: "Uptown").id)

Business.create(name: "Walgreens - Gold Coast", address: "1200 N Dearborn St.", neighborhood_id: Neighborhood.find_by(name: "Gold Coast").id)
Business.create(name: "Potash Markets - Gold Coast", address: "1525 N Clark St.", neighborhood_id: Neighborhood.find_by(name: "Gold Coast").id)
Business.create(name: "Whole Foods Market - Gold Coast", address: "30 W Huron St", neighborhood_id: Neighborhood.find_by(name: "Gold Coast").id)

Business.create(name: "Mariano's - Roscoe Village", address: " 3350 N Western Ave.", neighborhood_id: Neighborhood.find_by(name: "Roscoe Village").id)
Business.create(name: "Petco - Roscoe Village", address: " 3320 N Western Ave.", neighborhood_id: Neighborhood.find_by(name: "Roscoe Village").id)
Business.create(name: "Jewel_Osco - Roscoe Village", address: "3400 N Western Ave", neighborhood_id: Neighborhood.find_by(name: "Roscoe Village").id)


Business.create(name: "Whole Foods Market - Lincoln Park", address: "959 W Fullerton Ave.", neighborhood_id: Neighborhood.find_by(name: "Lincoln Park").id)
Business.create(name: "Foxtrot Market - Lincoln Park", address: "900 W Armitage Ave.", neighborhood_id: Neighborhood.find_by(name: "Lincoln Park").id)
Business.create(name: "Park View Grocer - Lincoln Park", address: "1940 N Clark St.", neighborhood_id: Neighborhood.find_by(name: "Lincoln Park").id)

Business.create(name: "Whole Foods Market - Goose Island", address: " 1550 N Kingsbury St.", neighborhood_id: Neighborhood.find_by(name: "Goose Island").id)
Business.create(name: "Target - Goose Island", address: "1200 N Larrabee St.", neighborhood_id: Neighborhood.find_by(name: "Goose Island").id)
Business.create(name: "PetSmart - Goose Island", address: "1415 N Kingsbury St.", neighborhood_id: Neighborhood.find_by(name: "Goose Island").id)


Business.create(name: "Go Grocer - Wicker Park", address: "1857 W North Ave", neighborhood_id: Neighborhood.find_by(name: "Wicker Park").id)
Business.create(name: "Jewel-Osco - Wicker Park", address: "1341 N Paulina St", neighborhood_id: Neighborhood.find_by(name: "Wicker Park").id)
Business.create(name: "Pet Supplies Plus - Wicker Park", address: "1289 N Milwaukee Ave", neighborhood_id: Neighborhood.find_by(name: "Wicker Park").id)

Business.create(name: "Target - Buck Town", address: "2656 N Elston Ave", neighborhood_id: Neighborhood.find_by(name: "Buck Town").id)
Business.create(name: "The Home Depot - Buck Town", address: "2570 N Elston Ave", neighborhood_id: Neighborhood.find_by(name: "Buck Town").id)
Business.create(name: "Mariano’s - Buck Town", address: "2112 N Ashland Ave", neighborhood_id: Neighborhood.find_by(name: "Buck Town").id)

User.create(full_name: "Shawn Corey Carter", email: "scarter@gmail.com", password: "billieboy2000")
User.create(full_name: "Kanye West", email: "kwest@gmail.com", password: "trumpcard2020")
User.create(full_name: "kendrick Lamar", email: "klamar@gmail.com", password: "goatsauce2672")
User.create(full_name: "Jermaine Cole", email:  "jcole@gmail.com", password: "theegoat2534")
User.create(full_name: "Chancelor Bennett", email: "cbennet@gmail.com", password: "chiboy2929")
User.create(full_name: "Nayvadius Wilburn", email: "nwilburn@gmail.com", password: "sadfuture23")
User.create(full_name: "Aubrey Graham", email: "agraham@gmail.com", password: "sixgawd45")
User.create(full_name: "Megan Ruth", email: "mruth@gmail.com", password: "hotgirl97")
User.create(full_name: "Solana Rowe", email: "srowe@gmail.com", password: "hotty2scotty34")
User.create(full_name: "Sean Anderson", email: "sanderson@gmail.com", password: "babyjhene54")
User.create(full_name: "Jhene Aiko", email: "jaiko@gamil.com", password: "babysean23")
User.create(full_name: "Rodric Davis", email: "rdavis@gmail.com", password: "gucciclone93")
User.create(full_name: "Jordan Carter", email: "jcarter@gmail.com", password: "babyvoice34")
User.create(full_name: "Symere Woods", email: "swoods@gmail.com", password: "deadfriends65")
User.create(full_name: "Tauheed Epps", email: "tepps@gmail.com", password: "twochainz45")
User.create(full_name: "Timothy Thedford", email: "tthedford@gmail.com", password: "childofislam67")

Note.create(title: "I need fish sticks", content: "I need 10 boxes of fish sticks!", category: "request", business_id: Business.find_by(name: "Whole Foods Market - Lincoln Park").id, user_id: User.find_by(full_name: "Kanye West").id)
Note.create(title: "milk please!", content: "I need a gallon of 2% milk, thanks!", category: "request", business_id: Business.find_by(name: "Target - Buck Town").id, user_id: User.find_by(full_name: "Jordan Carter").id)


UserNeighborhood.create(user_id: User.find_by(full_name: "Kanye West").id, neighborhood_id: Neighborhood.find_by(name: "Lincoln Park").id)
UserNeighborhood.create(user_id: User.find_by(full_name: "Jordan Carter").id, neighborhood_id: Neighborhood.find_by(name: "Buck Town").id)