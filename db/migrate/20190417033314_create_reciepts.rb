class CreateReciepts < ActiveRecord::Migration[5.2]
  def change
    create_table :reciepts do |t|

      t.belongs_to :user
      t.integer :month
      t.integer :year
      t.string :pdf_path
      t.string :email
      t.string :uuid
      t.string :information
      t.timestamps
    end
  end
end
