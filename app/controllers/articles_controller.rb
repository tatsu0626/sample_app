class ArticlesController < ApplicationController
  def new
  	 @article =Article.new
  end


 def create
  	 @article=Article.new(article_params)
  	 @article.save
     redirect_to '/articles/new'
 end

 def index
  	 @articles =Article.all
 end

 def show
     @article = Article.find(params[:id])
 end

 def edit
  @article=Article.find(params[:id])
 end

def update
  @article = Article.find(params[:id])
  @article.update(article_params)
  redirect_to article_path(@article.id)
end

 private

 def article_params
 	 params.require(:article).permit(:title,:body,:author,:image)
 end

end
