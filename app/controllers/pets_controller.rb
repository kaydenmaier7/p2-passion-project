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
  if current_user
    @pet = Pet.new(params[:pet])
    @pet.owner_id = @current_user.id

    if @pet.save
      redirect "/pets/#{@pet.id}"
    else
    	errors(@pet)
      erb :'pets/new'
    end
  else
    erb :'sessions/new'
  end
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









