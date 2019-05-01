class Owner < ApplicationRecord
  before_save :set_uuid
  has_many :properties

  private

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
