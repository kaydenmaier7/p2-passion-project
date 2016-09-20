class Article < ActiveRecord::Base
	belongs_to :user
	validates :article_title, :article_body, presence: true
end
