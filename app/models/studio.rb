class Studio < ApplicationRecord
  belongs_to :builder , optional: true
  has_many :games, dependent: :destroy

  validates  :name, :internet_site , uniqueness: true, presence: true
end
