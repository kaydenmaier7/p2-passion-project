class CreateBrooms < ActiveRecord::Migration
  def change
  	create_table :brooms do |t|
  		t.string :brand, null: false
  		t.references :owner
  		
  		t.timestamps null: false
  	end
  end
end
