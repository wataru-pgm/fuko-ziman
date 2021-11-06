class BoardsController < ApplicationController
  def top; end

  def index
    @pagy, @boards = pagy(Board.all.order(created_at: :desc))
    @pagy, @ranking_boards = pagy(Board.all.order(likes: :desc))
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path, notice: '投稿しました。'
    else
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  def likes
    @board = Board.find(params[:board_id])
    @like = @board.likes + 100
    @board.update(likes: @like)
  end

  private

  def board_params
    params.require(:board).permit(:title, :body)
  end
end
