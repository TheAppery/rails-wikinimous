class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    #@article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(articles_params)
    redirect_to root_path
  end

  def edit
    # @article = Article.find(params[:id]);
  end

  def update
    # @article = Article.find(params[:id]);
    @article.update(articles_params)
    redirect_to article_path(id: params[:id])
  end

  def destroy
    # @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
