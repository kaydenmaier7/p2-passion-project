# Account New Form
get '/users/:user_id/gringotts_accounts/new' do
  set_resource_owner
  erb :'gringotts_accounts/new'
end

# Gringotts Account Create
post '/users/:user_id/gringotts_accounts' do
  link_gringotts_account(params[:gringotts_account])
end

# Account Show
get '/users/:user_id/gringotts_accounts/:id' do
  set_resource_owner
  set_gringotts_account
  authenticated_gringotts_account_show_form
  
end

# Account Edit Form
get '/gringotts_accounts/:id/edit' do
  set_gringotts_account

  authenticated_gringotts_account_edit_form

end

# Account Update
patch '/gringotts_accounts/:id' do
  set_gringotts_account
  
  update_gringotts_account
 
  if @gringotts_account.save
    redirect "/users/#{current_user.id}/gringotts_accounts/#{@gringotts_account.id}"
  else
    errors(@gringotts_account)
    erb :'gringotts_accounts/edit'
  end
end





