class Property < ApplicationRecord
  belongs_to :owner
  has_many :rentals
  has_many :tenants
end
