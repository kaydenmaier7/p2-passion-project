
# USERS NEW
get '/users/new' do
  @user = User.new
  erb :'users/new'
end

# USERS CREATE
post '/users' do
  create_user(params[:password_confirmation], params[:user])
end

# USERS SHOW
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

# USERS EDIT
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end


# USERS UPDATE
put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect "/users/#{@user.id}"
end


# USERS DESTROY
delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect "/users"
end