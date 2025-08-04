class Game < ApplicationRecord
  belongs_to :studio
  has_many :user_play_games
<<<<<<< HEAD
  
=======
>>>>>>> ee16e814f95e059d456e3f35495d7ab557786bd8
  has_many :platform_has_games
  has_many :platforms, through: :platform_has_games

  validates :title, uniqueness: {
      message: "le jeu existe déjà" }, presence: true
end
