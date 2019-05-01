class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|

      t.string :name
      t.belongs_to :owner
      t.text :address
      t.boolean :active
      t.decimal :price, precision: 8, scale: 2
      t.string :property_num
      t.string :property_doc_path

      t.timestamps
    end
    add_index :properties, :property_num, unique: true
  end
end
