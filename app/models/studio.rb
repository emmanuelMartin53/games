class Studio < ApplicationRecord
  belongs_to :builder
  has_many :games
end
