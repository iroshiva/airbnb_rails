class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :dogsitter, index: true
      # permet de créer un dogsitter_id dans stroll

    	t.belongs_to :dog, index: true
    	# permet de créer un dog_id dans stroll
    	
      t.timestamps
    end
  end
end
