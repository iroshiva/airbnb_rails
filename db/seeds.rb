# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale="fr"

City.destroy_all

cit = ["Strasbourg", "Bordeaux", "Paris", "Marseille", "Vesoul", "Dijon", "Nantes", "Lille", "Auxerre", "Lyon"]
zip = ["67000", "33000", "75000", "13000", "70000", "21000", "44000", "59000", "89000", "69000"]

c = 0
z = 0

10.times do

	City.create(
		name: cit[c],
		zip_code: zip[z]
		)	

c += 1
z +=1

end


User.destroy_all

20.times do
	User.create(
		email: Faker::Internet.safe_email,
		phone_number: Faker::PhoneNumber.cell_phone,
		description: Faker::Lorem.sentence
	)
end


Listing.destroy_all

50.times do
	Listing.create(available_beds: rand(1..5),price: rand(30..120),description: Faker::Quote.matz,has_wifi: ["Oui","Non"].sample,welcome_message: Faker::Lorem.sentence,city: City.all.sample,user: User.all.sample)
	
end

