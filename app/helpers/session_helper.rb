helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def logged_in?
    !!current_user
  end

  def login(user)
    session[:id] = @user.id
  end

  def create_session
    @user = User.find_by_username(params[:username])

    if @user && @user.password == params[:password]
      login(@user)
      redirect "/users/#{@user.id}"

    else
      @errors = ["User name and/or Password not found."]
      erb :'sessions/new'
    end
  end
  
  def logout
    session[:id] = nil
  end

  def errors(item)
    @errors = item.errors.full_messages
  end

  def authenticated_user(item)
    logged_in? && @current_user.id == item.user_id
  end
  
  def authenticated_owner(item)
    logged_in? && @current_user.id == item.owner_id
  end

end
