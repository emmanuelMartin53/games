class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

  end



  private

    def game_params
      params.require(:game).permit(:title, :type_game, :description, :exit_date, :price, :min_players, :min_age)
    end

end
