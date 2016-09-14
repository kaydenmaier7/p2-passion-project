class CreateWands < ActiveRecord::Migration
  def change
  	create_table :wands do |t|
  		t.float :length
  		t.string :wood_type
  		t.string :core
  		t.references :owner
  		t.references :creator

  		t.timestamps
  	end
  end
end
