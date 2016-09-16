class Wand < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	belongs_to :creator, class_name: 'User'
end
