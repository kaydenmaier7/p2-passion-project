class CreatePets < ActiveRecord::Migration
  def change
  	create_table :pets do |t|
  		t.string :name, null: false
  		t.string :species, null: false
  		t.references :owner
  		
  		t.timestamps
  	end
  end
end
