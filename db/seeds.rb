# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all

100.times do
	dog = Dog.create(
		name: Faker::Creature::Dog.name,
		city: City.all.sample
		)
end
# création de 100 dogs


Dogsitter.destroy_all

30.times do
  dogsitter = Dogsitter.create(
  	first_name: Faker::Name.first_name,
  	city: City.all.sample 
  	)
end
# création de 30 dogsitters



City.destroy_all

30.times do
	city = City.create(
		name: ["Marseille", "Lille", "Dijon", "Souffelweyersheim", "La Motte Chaloncon", "Vesoul", "Biarritz", "Clermont-Ferrand"].sample
		)
end
# création de 30 villes


Stroll.destroy_all

70.times do
	dog = Dog.all.sample
	dogsitter = Dogsitter.all.sample
	# définition de deux variables

	while dogsitter.city != dog.city
		dog = Dog.all.sample
	end
	# boucle qui dit que "tant que les cities de dogsitter et dog sont différentes, ne crée rien!"
	# evite les strolls dans des villes différentes!

  Stroll.create(
  	dog: dog,
  	# fait référence au dog_id de stroll

  	dogsitter: dogsitter
  	# fait référence au dogsitter_id de stroll
  	
  	)
end
# création de 70 promenades
