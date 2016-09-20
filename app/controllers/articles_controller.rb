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
	# create_articles
	if current_user
		@article = Article.new(params[:article])
		@article.user_id = @current_user.id
		if @article.save
			redirect "/articles/#{@article.id}"
		else
				erb :'articles/new'
		end
	else
		erb :'sessions/new'
	end
end

# Articles Show 
get '/articles/:id' do
	@article = Article.find(params[:id])
	erb :'articles/show'
end

# Articles Edit Form
get '/articles/:id/edit' do

end

# Articles Update
put '/articles/:id' do

end

# Articles Destroy
delete '/articles/:id' do 

end







