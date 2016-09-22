helpers do
  
  def link_gringotts_account(account)
    @gringotts_account = GringottsAccount.new(params[:gringotts_account])
    @gringotts_account.user_id = current_user.id

    if @gringotts_account.save
      redirect "/gringotts_accounts/#{@gringotts_account.id}"
    else
      errors(@gringotts_account)
      erb :'gringotts_accounts/new'
    end
  end

  def set_gringotts_account
  	@gringotts_account = GringottsAccount.find(params[:id])
  end

end
