class Platform < ApplicationRecord
  belongs_to :builder
  has_many :user_has_platforms
  has_many :users, through: :user_has_platforms

  has_many :platform_has_game
  has_many :games, through: :platform_has_game
end
