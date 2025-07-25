class PlatformsController < ApplicationController


  def index
    @platforms = Platform.all
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

  private

  def platform_params
    params.require(:platform).permit(:name, :exit_date, :builder_id)
  end

end
