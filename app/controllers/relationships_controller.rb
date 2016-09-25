# Relationships Index For User
get '/users/:user_id/relationships' do
	@relationships = User.find(params[:user_id]).relationships
	erb :'relationships/index'
end

# Relationships Edit

# Relationships Update




