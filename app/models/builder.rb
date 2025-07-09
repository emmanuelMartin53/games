class Builder < ApplicationRecord

  validates :name, :internet_site, :postal_address, :origin_country  presence: true
end
