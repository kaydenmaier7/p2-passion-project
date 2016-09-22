# Account New Form
get '/gringotts_accounts/new' do
	erb :'gringotts_accounts/new'
end
 
# Gringotts Account Create
post '/gringotts_accounts' do	
	@gringotts_account = GringottsAccount.new(params[:gringotts_account])
end

# Account Show
get '/gringotts_accounts/:id' do
	@gringotts_account = current_user.gringotts_account if logged_in?
	erb :'gringotts_accounts/show'
end

