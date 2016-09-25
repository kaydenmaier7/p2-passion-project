# Relationships Index For User
get '/users/:user_id/relationships' do
	@relationships = User.find(params[:user_id]).relationships
	erb :'relationships/index'
end

# Relationships New Form
	get '/users/:user_id/relationships/new' do
		@user = User.find(params[:user_id])
		erb :'relationships/new'
	end

# Relationships Create
# Relationships Edit
# Relationships Show
# Relationships Update
# Relationships Destroy




