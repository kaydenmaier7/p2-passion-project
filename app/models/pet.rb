class Pet < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	validates :name, :species, presence: true
end
