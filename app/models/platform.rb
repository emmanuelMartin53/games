class Platform < ApplicationRecord
  belongs_to :builder
  has_many :user_has_platforms
end
