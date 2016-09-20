class CreateGringottsAccounts < ActiveRecord::Migration
  def change
  	create_table :gringotts_accounts do |t|
  		t.decimal :balance, precision: 17, scale: 5, null: false
  		t.decimal :interest_rate, precision: 8, scale: 4, null: false
  		t.references :user

  		t.timestamps null: false
  	end
  end
end
