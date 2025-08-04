class Game < ApplicationRecord
  belongs_to :studio
  has_many :user_play_games
  has_many :platform_has_games
  has_many :platforms, through: :platform_has_games

  validates :title, uniqueness: {
      message: "le jeu existe déjà" }, presence: true

  validates :min_age, numericality: { greater_than_or_equal_to: 3 }, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
