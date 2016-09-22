# Pets Index
get '/pets' do
  # Change this to just current_user not current_user
  @pets = current_user.pets if logged_in?
  erb :'pets/index'
end

# Pets New Form
get '/pets/new' do
  if logged_in?
    erb :'pets/new'
  else
    @errors = [ 'You must be logged in to add a new pet.' ]
    erb :'sessions/new'
  end
end

# Pets Create
post '/pets' do
  create_pet(params[:pet])
end

# Pets Show
get '/pets/:id' do
  find_pet

  if authenticated_owner(@pet)
    erb :'pets/show'
  elsif session[:id] == nil
    @errors = ['You must be logged in to view this content.']
    erb :'sessions/new'
  else
    @errors = [
      'You are not authorized to view this content!',
      'For security reasons, you are being logged out.'
    ]
    logout
    erb :'sessions/new'
  end
end

# Pets Edit Form
get '/pets/:id/edit' do
  find_pet

  if authenticated_owner(@pet)
    erb :'pets/edit'
  elsif session[:id] == nil
    @errors = ['You must be logged to view this content.']
    erb :'sessions/new'
  else
    @errors = [
      'You are not authorized to view this content!',
      'For security reasons, you are being logged out.'
    ]
    logout
    erb :'sessions/new'
  end
end

# Pets Update
patch '/pets/:id' do
  find_pet
  @pet.update(params[:pet])
  if @pet.save
    redirect "/pets/#{@pet.id}"
  else
    errors(@pet)
    erb :'pets/edit'
  end
end

# Pets Destroy
delete '/pets/:id' do
	find_pet
	@pet.destroy
	redirect '/pets'
end
