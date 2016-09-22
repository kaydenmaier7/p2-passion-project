helpers do

  def create_user(password_confirmation, user)
    if password_confirmation == user[:password]
      @user = User.new(user)

      if @user.save
        login(@user)
        return redirect '/'
      else
        @errors = @user.errors.full_messages
        return erb :'users/new'
      end

    else
      @errors = ["Passwords do not match!"]
      return erb :'users/new'
    end
  end

  # This method is poorly named.....
  # this should be called resource_owner
  def authenticated_user(item)
    logged_in? && current_user.id == item.user_id
  end
  
  def authenticated_owner(item)
    logged_in? && current_user.id == item.owner_id
  end
end
