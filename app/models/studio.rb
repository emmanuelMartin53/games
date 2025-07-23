class Studio < ApplicationRecord
  belongs_to :builder , optional: true
  has_many :games, dependent: :destroy
end
