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

  def edit
    @game =  Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    #@flat.user = current_user
    if @game.update(game_params)
      redirect_to game_path(@game), notice: "le jeu a été modifié"
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private

  def game_params
    params.require(:game).permit(:title, :type_game,:description, :exit_date, :min_player, :min_age, :price, :studio_id)
  end

end
