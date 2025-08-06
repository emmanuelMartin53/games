class GameHasType < ApplicationRecord
  belongs_to :game
  belongs_to :game_type
end
