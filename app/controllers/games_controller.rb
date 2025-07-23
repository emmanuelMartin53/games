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
    if @game.save
      redirect_to games_path, notice: "Le jeu a été ajouté"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :type_game,:description, :exit_date, :min_player, :min_age, :price, :studio_id)
  end



  private

    def game_params
      params.require(:game).permit(:title, :type_game, :description, :exit_date, :price, :min_players, :min_age)
    end

end
