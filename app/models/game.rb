class Game < ApplicationRecord
  belongs_to :studio
  has_many :user_play_games

  validates :title, uniqueness: { 
      message: "le jeu existe déjà" }
end
