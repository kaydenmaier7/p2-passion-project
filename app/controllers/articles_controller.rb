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
  @article = Article.find(params[:id])
  erb :'articles/show'
end

# Articles Edit Form
get '/articles/:id/edit' do
  if logged_in?
    @article = Article.find(params[:id])
    erb :'articles/edit'
  else
    redirect '/sessions/new'
  end
end

# Articles Update
patch '/articles/:id' do
  @article = Article.find(params[:id])
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
  @article = Article.find(params[:id])
  @article.destroy
  redirect '/articles' 
end
