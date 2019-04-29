class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|

      t.belongs_to :user
      t.belongs_to :property
      t.integer :year
      t.integer :month
      t.string :status, default: 'PENDING'
      t.string :document

      t.timestamps
    end
  end
end
