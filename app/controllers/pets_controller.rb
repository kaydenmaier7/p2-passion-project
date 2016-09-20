# Pets Index
get '/pets' do 
	@pets = @current_user.pets if logged_in?
	erb :'pets/index'
end

get ''