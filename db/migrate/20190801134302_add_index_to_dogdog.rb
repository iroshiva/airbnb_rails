class AddIndexToDogdog < ActiveRecord::Migration[5.2]
  def change
  	add_reference :dogs, :city, foreign_key: true
  	# permet de créer un city_id dans dog

  	add_reference :dogsitters, :city, foreign_key: true
  	# permet de créer un city_id dans dogsitter
  end
end
