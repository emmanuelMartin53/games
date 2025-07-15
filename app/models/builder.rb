class Builder < ApplicationRecord
  has_many :studios, dependent: :destroy
  has_many :platforms, dependent: :destroy

  validates :name, :internet_site, :postal_address, :origin_country,  presence: true
end
