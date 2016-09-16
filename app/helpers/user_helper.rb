helpers do

  def create_user
    if params[:password_confirmation] == params[:user][:password]
      @user = User.new(params[:user])

      if @user.save
        login(@user)
        redirect '/'
      else
        @errors = @user.errors.full_messages
        p @errors
        erb :'users/new'
      end

    else
      @errors = ["Passwords do not match!"]
      erb :'users/new'
    end
  end

end
