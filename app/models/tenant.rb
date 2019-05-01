class Tenant < ApplicationRecord
  has_many :rentals
  belongs_to :property
end
