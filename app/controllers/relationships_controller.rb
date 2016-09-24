# Relationship Index For User
get '/users/:id/relationships' do
	@relationships = User.find(params[:id]).relationships
	erb :'relationships/index'
end