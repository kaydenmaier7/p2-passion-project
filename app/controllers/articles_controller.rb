# Articles Index
get '/articles' do
  @articles = @current_user.articles if logged_in?
  erb :'articles/index'
end

# Articles New Form
get '/articles/new' do
  if logged_in?
    erb :'articles/new'
  else
    erb :'sessions/new'
  end
end

# Articles Create
post '/articles' do
  create_article(params[:article])
end

# Articles Show
get '/articles/:id' do
  find_article

  if authenticated(@article)
    erb :'articles/show'
  elsif session[:id] == nil
    @errors = ['You must be logged to view this content.']
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
  find_article

  if authenticated(@article)
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
  find_article
  @article.update(params[:article])
  if @article.save
    p "Updated" * 100
    redirect "/articles/#{@article.id}"
  else
    p '* errors' * 100
    errors(@article)
    erb :'articles/edit'
  end
end

# Articles Destroy
delete '/articles/:id' do
  find_article
  @article.destroy
  redirect '/articles'
end
