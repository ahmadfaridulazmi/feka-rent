class Receipt < ApplicationRecord
  before_save :set_uuid
  belongs_to :rental

  private

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
