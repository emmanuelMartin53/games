class Game < ApplicationRecord
  belongs_to :studio
  has_many :user_play_games
end
