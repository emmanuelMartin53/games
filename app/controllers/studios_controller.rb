require 'net/http'
require 'json'
require 'uri'
require 'open-uri'

class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])
  end

  def  new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
     if @studio.save
      redirect_to studios_path, notice: "Le studio a été ajouté"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :internet_site, :postal_address, :origin_country, :builder_id)
  end
end
