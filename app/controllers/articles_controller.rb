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
  end

  def update
    article = Article.find(params[:id])
    if article.update(article_params)
      render nothing: true, status: 200
    else
      render nothing: true, status: 400
    end
  end

  def destroy
  end

  private

  def article_params
    params.require('article').permit(%w(title author body))
  end
end
