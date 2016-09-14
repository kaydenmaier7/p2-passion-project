class Wand < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	belongs_to :wandmaker, class_name: 'User'
end
