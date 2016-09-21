# Pets Index
get '/pets' do
  @pets = @current_user.pets if logged_in?
  erb :'pets/index'
end

# Pets New Form
get '/pets/new' do
  erb :'pets/new'
end

# Pets Create
post '/pets' do
  create_pet(params[:pet])
end

# Pets Show
get '/pets/:id' do
  if logged_in?
    @pet = Pet.find(params[:id])
    erb :'pets/show'
  else
    erb :'sessions/new'
  end
end

# Pets Edit Form
get '/pets/:id/edit' do
	@pet = Pet.find(params[:id])
	
end











