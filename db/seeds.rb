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
User.destroy_all
Listing.destroy_all
Reservation.destroy_all

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


20.times do
	User.create(
		email: Faker::Internet.safe_email,
		phone_number: Faker::PhoneNumber.cell_phone,
		description: Faker::Lorem.sentence
	)
end

wifi = ["Oui","Non"]

50.times do
	Listing.create(available_beds: rand(1..5), price: rand(30..120),description: Faker::Quote.matz, has_wifi: wifi.sample, welcome_message: Faker::Lorem.sentence, city: City.all.sample, user: User.all.sample)
	
end


Listing.all.each do |listing|
	
	5.times do
    start_date = Faker::Date.backward(days: 700) 
    end_date = start_date + rand(1..10)
    r = Reservation.create(start_date: start_date, end_date:end_date,listing: listing, user:User.all.sample )
    # while r.id == nil
    #   start_date = Faker::Date.backward(days: 700) 
    #   end_date = start_date + rand(1..10)
    #   r = Reservation.create(start_date: start_date, end_date:end_date,listing: listing, guest:User.all.sample )
    # end
  end


  5.times do
    start_date = Faker::Date.forward(days: 700) 
    end_date = start_date + rand(1..10)
    r = Reservation.create(start_date:start_date, end_date:end_date, listing: listing, user: User.all.sample )
    # while r.id == nil
    #   start_date = Faker::Date.forward(days: 700) 
    #   end_date = start_date + rand(1..10)
    #   r = Reservation.create(start_date:start_date, end_date:end_date, listing: listing, guest: User.all.sample )
    # end
  end

end