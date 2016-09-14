class CreateGringottsAccounts < ActiveRecord::Migration
  def change
  	create_table :gringotts_accounts do |t|
  		t.decimal :balance, precision: 17, scale: 5
  		t.decimal :interest_rate, precision: 8, scale: 4
  		t.references :users

  		t.timestamps
  	end
  end
end
