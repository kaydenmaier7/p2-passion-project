helpers do
  def create_article(article)
    if current_user
      @article = Article.new(params[:article])
      @article.user_id = current_user.id

      if @article.save
        redirect "/articles/#{@article.id}"
      else
        errors(@article)
        erb :'articles/new'
      end
    else
      erb :'sessions/new'
    end
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
