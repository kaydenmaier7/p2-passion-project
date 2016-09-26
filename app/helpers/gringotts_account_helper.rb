helpers do

  def link_gringotts_account(account)
    @gringotts_account = GringottsAccount.new(account)
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

  def authenticated_gringotts_account_show_form
    if resource_owner?(@gringotts_account)
      erb :'gringotts_accounts/show'

    elsif session[:id] == nil
      @errors = [
        'You must be logged in to view this content.'
      ]
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

  def authenticated_gringotts_account_edit_form
    if resource_owner?(@gringotts_account)
      erb :'gringotts_accounts/edit'

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

  def update_gringotts_account
    @gringotts_account.balance = params[:gringotts_account][:balance]
    @gringotts_account.interest_rate = params[:gringotts_account][:interest_rate]

    return @gringotts_account
  end
end
