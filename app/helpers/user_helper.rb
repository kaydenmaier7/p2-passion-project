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

end
