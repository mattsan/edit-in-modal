class ArticlesController < ApplicationController
  def index
    articles = Board.find(params[:board_id]).articles
    respond_to do |format|
      format.json do
        render json: articles
      end
    end
  end

  def create
    article = article.new(article_params)
    status = if article.save
               200
             else
               400
             end
    render json: article.to_json(methods: :errors), status: status
  end

  def update
    article = Article.find(params[:id])
    status = if article.update(article_params)
               200
             else
               400
             end
    render json: article.to_json(methods: :errors), status: status
  end

  def destroy
  end

  private

  def article_params
    params.require('article').permit(%w(title author body))
  end
end
