class User < ApplicationRecord
  has_many :rentals
  has_one :property, through: :rentals
  has_many :reciepts
end
