class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|

      t.string :name
      t.string :email
      t.integer :ic_num
      t.integer :tel_num
      t.text :address
      t.string :uuid, default: SecureRandom.uuid
      t.timestamps
    end
    add_index :owners, :uuid, unique: true
  end
end
