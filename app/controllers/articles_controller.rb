class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    Article.destroy(params[:id])
    redirect_to articles_url
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])

    redirect_to article_url(@article)
  end
end
