# encoding: UTF-8
class ArticlesController < ApplicationController

  respond_to :html

#	before_filter :authenticate_usuario!
#	load_and_authorize_resource

	before_filter :find_article, :except => [:index, :new, :create]

  # GET /articles
  # GET /articles.xml
  def index
#		@search = Article.search(params[:search])
#		@articles = @search.paginate(:page => params[:page], :per_page => 15)
    @articles = Article.all
    respond_with(@articles)
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    respond_with @article
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new
    respond_with @article
  end

  # GET /articles/1/edit
  def edit
    respond_with @article
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])
    flash[:notice] = t('actions.create.success', Article.model_name.human) if @article.save
    respond_with(@article)
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    flash[:notice] = t('actions.update.success', Article.human_name) if @article.update_attributes(params[:article])
    respond_with(@article)
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    flash[:notice] = t('actions.destroy.success', Article.human_name) if @article.destroy
    respond_with(@article)
  end

  protected

  def find_article
    @article = Article.find(params[:id])
  end
end

