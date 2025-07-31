class PlatformsController < ApplicationController


  def index
    @platforms = Platform.all
  end

  def show
    @platform = Platform.find(params[:id])
  end

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.new(platform_params)
     if @platform.save
      redirect_to platforms_path, notice: "La console de jeu a été ajouté"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @platform = Platform.find(params[:id])
  end

  def update
    @platform = Platform.find(params[:id])
    if @platform.update(platform_params)
       redirect_to platform_path(@platform), notice: "la plateforme a été modifié"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def platform_params
    params.require(:platform).permit(:name, :exit_date, :builder_id)
  end

end
