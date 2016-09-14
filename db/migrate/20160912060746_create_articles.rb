class CreateArticles < ActiveRecord::Migration
  def change
  	create_table :articles do |t|
  		t.string :article_title, null: false
  		t.text :article_body, null: false
  		t.references :user

  		t.timestamps
  	end
  end
end
