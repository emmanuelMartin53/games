class Game < ApplicationRecord
  belongs_to :studio
  has_many :user_play_games
  has_many :platform_has_game
  has_many :platforms, through: :platform_has_game

  validates :title, uniqueness: {
      message: "le jeu existe déjà" }
end
