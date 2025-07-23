class Studio < ApplicationRecord
  belongs_to :builder
  has_many :games, dependent: :destroy
end
