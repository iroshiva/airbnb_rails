# Etablissement des model et leur interaction

## Dogsitter - City

	1 dogsitter n'a qu'une city
	1 city a plusieurs dogsitter 
	==> relation de type 1-N
	==> city_id dans dogsitter via migration

## Dog - City

	1 dog n'a qu'une city
	1 city a plusieurs dog 
	==> relation de type 1-N
	==> city_id dans dog via migration


## Dogsitter - Dog

	1 dogsitter a plusieurs dog 
	1 dog a plusiers dogsitter
	==> relation de type N-N

	==> utilisation d'un model intermédiaire appelé Stroll
	1 dogsitter a plusieurs stroll
	1 stroll a 1 dogsitter 
	==> relation de type 1-N
	==> dogsitter_id_id dans stroll via migration
	i dog a plusieurs stroll
	1 stroll a un dog 
	==> relation de type 1-N
	==> dog_id dans stroll via migration

