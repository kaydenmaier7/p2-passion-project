class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :first_name, null: false
  		t.string :last_name, null: false
  		t.string :username, null: false
  		t.string :email, null: false
  		t.string :password_hash, null: false
			t.string :blood_status, null: false  		
			t.string :species, null: false
			t.string :occupation, null: false
			t.string :school, null: false
			t.string :school_house, null: false			
			t.string :patronus, null: false

			t.timestamps			
  	end
  end
end
