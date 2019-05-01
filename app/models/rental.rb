class Rental < ApplicationRecord
  belongs_to :property
  belongs_to :tenant
  has_one :receipt
end
