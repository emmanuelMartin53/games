class GameType < ApplicationRecord

  has_many :game_has_types, dependent: :destroy
  has_many :game_types, through: :game_has_types
end
