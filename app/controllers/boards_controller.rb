class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
