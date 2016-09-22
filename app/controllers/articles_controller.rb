# rails example for the array
# before [create,update,show,edit] do
#   set_article
# end

# Articles Index
get '/articles' do
  @articles = current_user.articles if logged_in?
  erb :'articles/index'
end

# Articles New Form
get '/articles/new' do
  if logged_in?
    erb :'articles/new'
  else
    @errors = [
      'You must be logged in to add a new article.'
    ]
    erb :'sessions/new'
  end
end

# Articles Create
post '/articles' do
  create_article(params[:article])
end

# Articles Show
get '/articles/:id' do
  # you'll see this pattern as
  # set_article
  # also it would be included in a before hook in your routes
  set_article

  if resource_owner(@article)
    erb :'articles/show'
  
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

# Articles Edit Form
get '/articles/:id/edit' do
  set_article

  if resource_owner(@article)
    erb :'articles/edit'
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

# Articles Update
patch '/articles/:id' do
  set_article
  @article.update(params[:article])
  
  if @article.save
    redirect "/articles/#{@article.id}"
  else
    errors(@article)
    erb :'articles/edit'
  end
end

# Articles Destroy
delete '/articles/:id' do
  set_article
  @article.destroy
  redirect '/articles'
end
