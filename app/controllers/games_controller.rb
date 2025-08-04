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
      redirect_to games_path, notice: "le jeu a été modifié"
    else
      render :edit, status: :unprocessable_entity
    end

  end

 def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path(@game.studio), status: :see_other, notice: "Le jeu a été supprimé."
  end

  private

  def game_params
<<<<<<< HEAD
    params.require(:game).permit(:title, :type_game,:description, :exit_date, :min_player, :min_age, :price, :studio_id, platform_ids: [] )
=======
    params.require(:game).permit(:title, :type_game,:description, :exit_date, :min_player, :min_age, :price, :studio_id, platform_ids: [])
>>>>>>> ee16e814f95e059d456e3f35495d7ab557786bd8
  end
end
