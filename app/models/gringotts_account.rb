class GringottsAccount < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	validates :balance, :interest_rate, presence: true
end
