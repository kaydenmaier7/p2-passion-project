helpers do

	def set_wand
		@user = User.find(params[:user_id])
		@wand = Wand.find(params[:id])
	end
	
end