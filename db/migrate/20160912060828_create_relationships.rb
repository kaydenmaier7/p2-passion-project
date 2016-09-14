class CreateRelationships < ActiveRecord::Migration
  def change
  	create_table :relationships do |t|
  		t.string :kind
  		t.references :user
  		t.references :relative

  		t.timestamps null: false
  	end
  end
end
