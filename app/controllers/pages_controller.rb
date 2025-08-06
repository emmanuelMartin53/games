class PagesController < ApplicationController
  def home
    @recent_games = Game.order(exit_date: :desc).limit(3)
  end
end
