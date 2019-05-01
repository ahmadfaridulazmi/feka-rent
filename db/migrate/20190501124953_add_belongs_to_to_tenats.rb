class AddBelongsToToTenats < ActiveRecord::Migration[5.2]
  def change
    add_reference :tenants, :property
  end
end
