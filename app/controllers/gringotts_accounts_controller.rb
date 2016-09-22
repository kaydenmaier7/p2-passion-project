# Account New Form
get '/gringotts_accounts/new' do
	erb :'gringotts_accounts/new'
end
 

# Account Show
get '/gringotts_accounts/:id' do
	@gringotts_account = current_user.gringotts_account if logged_in?
	erb :'gringotts_accounts/show'
end