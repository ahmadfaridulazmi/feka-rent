class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :username
      t.string :password
      t.string :token
      t.string :name
      t.string :email
      t.string :address
      t.string :work
      t.string :work_place
      t.string :status, default: 'PENDING'
      t.string :role, default: 'RENTER'
      t.boolean :delete, default: false

      t.timestamps
    end
  end
end
