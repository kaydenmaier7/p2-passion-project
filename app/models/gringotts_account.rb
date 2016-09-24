class GringottsAccount < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	validates :balance, :interest_rate, presence: true

	

	# def money_formatter(number)

	# 	150_000_000

	# 		gsub!(/(\d{3})(\D*)(\d{2})(\D*)(\d{4})/, '\1-\3-\5')
	# end

end
