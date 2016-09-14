class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :first_name, null: false
  		t.string :last_name, null: false
  		t.string :username, null: false
  		t.string :email, null: false
  		t.string :password_hash, null: false
			t.string :blood_status
			t.string :species
			t.string :occupation
			t.string :school
			t.string :school_house			
			t.string :patronus

			t.timestamps null: false			
  	end
  end
end
