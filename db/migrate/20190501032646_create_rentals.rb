class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|

      t.belongs_to :tenant
      t.belongs_to :property
      t.integer :year
      t.integer :month
      t.boolean :payment, default: false
      t.string :receipt_doc_path

      t.timestamps
    end
  end
end
