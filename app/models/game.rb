class Game < ApplicationRecord

  def type_names

    # .pluck est une méthode qui permet de récupérer une ou plusieurs colonnes spécifique
    # depuis la BDD ous forme de tableau sans charger les objets complets Active records en mémoire
    # requète SQL avec .pluck :SELECT name FROM game_types INNER JOIN game_has_types ...

    game_types.pluck(:name).join(', ')
  end

  #TYPE_GAMES = [ "RPG", "Aventure", "Action", "Combat", "Sport" ].freeze

  has_many :game_has_types, dependent: :destroy
  has_many :game_types, through: :game_has_types


  belongs_to :studio
  has_many :user_play_games
  has_many :platform_has_games, dependent: :destroy
  has_many :platforms, through: :platform_has_games

  validates :title, uniqueness: {
      message: "le jeu existe déjà" }, presence: true

  validates :min_player, numericality: {greater_than_or_equal_to: 1}, presence: true
  validates :min_age, numericality: { greater_than_or_equal_to: 3 }, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
