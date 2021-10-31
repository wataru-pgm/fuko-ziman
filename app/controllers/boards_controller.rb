class BoardsController < ApplicationController

  def index
    @pagy, @boards = pagy(Board.all)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to boards_path, notice: "投稿しました。"
  end

  def show
    @board = Board.find(params[:id])
  end

  def likes
    @board = Board.find(params[:board_id])
    @like = @board.likes
    @like += 100
    @board.update(likes: @like)
  end

  private

  def board_params
    params.require(:board).permit(:title, :body)
  end

end
