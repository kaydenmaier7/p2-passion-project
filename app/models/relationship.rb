class Relationship < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	belongs_to :relative, class_name: 'User'
	
	def relative_info
		User.find(self.relative_id)
	end


end
